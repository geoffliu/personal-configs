import json
import subprocess

def get_upcoming(core_file):
    remind = subprocess.run(['remind', '-ppp12', core_file], capture_output=True, text=True)
    data = json.loads(remind.stdout)
    res = []
    for m in data:
        for item in m['entries']:
            res.append({
                'due': item['date'],
                'task': item['body'],
                'done': False
            })
    return res


if __name__ == '__main__':
    from sys import argv

    print(get_upcoming(argv[1]))

