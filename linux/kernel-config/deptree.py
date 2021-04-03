import kconfiglib

def is_satisfied(dep, target):
    if isinstance(dep, kconfiglib.Symbol):
        return dep.tri_value >= target

    if dep[0] == kconfiglib.NOT:
        cond = dep[1]
        if cond.type == kconfiglib.UNKNOWN:
            print('WARNING: unknown dep ' + cond.name)
            return True

        return cond.str_value == 'n'

    if dep[0] == kconfiglib.EQUAL:
        op, c1, c2 = dep
        return c1.str_value == c2.str_value

    if dep[0] == kconfiglib.OR:
        op, c1, c2 = dep
        return is_satisfied(c1, target) or is_satisfied(c2, target)

    return False
