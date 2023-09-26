import json
import subprocess
import sys
import copy
from datetime import date, timedelta
import time


def get_upcoming(rem_file):
    remind = subprocess.run(
        ["remind", "-ppp12", rem_file], capture_output=True, text=True
    )
    data = json.loads(remind.stdout)
    res = []
    for m in data:
        for item in m["entries"]:
            res.append({"due": item["date"], "task": item["body"], "done": False})
    return res


def merge_items(base, new):
    items = {(i["due"], i["task"]): i for i in base + new}
    return list(sorted(items.values(), key=lambda i: (i["due"], i["task"])))


def list_tasks(past, future):
    if past:
        print("Past due tasks:")
        for item in past:
            print(f'{item["due"]} {item["task"]}')
        print()

    if future:
        print("Future tasks:")
        for item in future[:10]:
            print(f'{item["due"]} {item["task"]}')
        print()


def tick_off(state):
    while True:
        for i, item in enumerate(state):
            print(f'{i} {item["due"]} {item["task"]}')
        print()

        try:
            selection = int(input("Selection? "))
            state[selection]["done"] = True
            return

        except (ValueError, IndexError):
            print()
            print("Invalid selection")
            print()


if __name__ == "__main__":
    from sys import argv

    new_state = get_upcoming(argv[1])
    with open(argv[2]) as f:
        curr_state = json.load(f)

    saved_state = copy.deepcopy(curr_state)

    curr_state = merge_items(new_state, curr_state)

    today = date.today().strftime("%Y-%m-%d")
    outstanding = [i for i in curr_state if not i["done"]]
    past_due = [i for i in outstanding if i["due"] <= today]
    future_due = [i for i in outstanding if i["due"] > today]

    cmd = argv[3] if len(argv) > 3 else "list"

    match cmd:
        case "due":
            print(len(past_due))

        case "done":
            tick_off(past_due)

        case "new":
            delay = int(argv[5]) if len(argv) > 5 else 0
            new_task = {
                "due": (date.today() + timedelta(days=delay)).strftime("%Y-%m-%d"),
                "task": argv[4],
                "done": False,
            }
            curr_state = merge_items(curr_state, [new_task])

        case _:
            list_tasks(past_due, future_due)

    if saved_state != curr_state:
        with open(argv[2], "w") as f:
            json.dump(curr_state, f, indent=4)
            time.sleep(1)
