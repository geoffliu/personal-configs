import kconfiglib

class BadDependency(Exception):
    pass

UNKNOWN_SYMS = {
    'UML': False,
    'S390': False,
    'EMULATED_CMPXCHG': False,
}

def is_satisfied(dep, target):
    if isinstance(dep, kconfiglib.Symbol):
        if dep.type == kconfiglib.UNKNOWN:
            if dep.name in UNKNOWN_SYMS:
                return UNKNOWN_SYMS[dep.name]
            else:
                print('WARNING: unknown dep ' + dep.name)
                return True
        return dep.user_value and dep.user_value >= target

    if dep[0] == kconfiglib.NOT:
        return not is_satisfied(dep[1], target)

    if dep[0] == kconfiglib.EQUAL:
        op, c1, c2 = dep
        return c1.str_value == c2.str_value

    if dep[0] == kconfiglib.OR:
        op, c1, c2 = dep
        return is_satisfied(c1, target) or is_satisfied(c2, target)

    if dep[0] == kconfiglib.AND:
        op, c1, c2 = dep
        return is_satisfied(c1, target) and is_satisfied(c2, target)

    return False


def enable_dep_tree(symbol, dep, target, explicit_sets):
    if dep == symbol.kconfig.y:
        return

    if isinstance(dep, kconfiglib.Symbol):
        enable_config(dep, target, explicit_sets)
        return

    if isinstance(dep, kconfiglib.Choice):
        return

    if dep[0] == kconfiglib.AND:
        op, c1, c2 = dep
        enable_dep_tree(symbol, c1, target, explicit_sets)
        enable_dep_tree(symbol, c2, target, explicit_sets)

    elif not is_satisfied(dep, target):
        print(symbol)
        print(kconfiglib.expr_str(dep))
        raise BadDependency()


def enable_config(symbol, target, explicit_sets):
    curr_value = symbol.user_value or 0
    if curr_value >= target:
        return

    truncated = max(target, curr_value) if symbol.type == kconfiglib.TRISTATE else 2 if target else 0
    symbol.set_value(truncated)
    explicit_sets.add(symbol.name)
    enable_dep_tree(symbol, symbol.direct_dep, target, explicit_sets)


def try_persist(symbol, explicit_sets):
    if symbol.user_value == symbol.tri_value:
        return True

    if not symbol.rev_dep:
        return False

    enable_dep_tree(symbol, symbol.rev_dep, symbol.user_value, explicit_sets)

    return symbol.user_value == symbol.tri_value or is_satisfied(symbol.rev_dep, symbol.user_value)

