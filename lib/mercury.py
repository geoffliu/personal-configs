import math
import ephem
import datetime
from sys import argv

INTERVAL = datetime.timedelta(days=5)
EPSILON = datetime.timedelta(seconds=1)
mercury = ephem.Mercury()

def print_results(status, d):
    hours = d.seconds // 3600
    minutes = d.seconds % 3600 // 60
    remaining_formatted = '%d天%d小时%d分' % (d.days, hours, minutes)

    status_formatted = '顺' if status else '逆'
    content = '水星%s行 (%s)' % (status_formatted, remaining_formatted)

    if len(argv) == 2:
        with open(argv[1], 'w') as f:
            print(content, file=f)
    else:
        print(content)

def is_prograde(new_ra, current_ra):
  d = new_ra - current_ra
  if d > math.pi:
    d -= 2 * math.pi
  elif d < -math.pi:
    d += 2 * math.pi
  return d > 0


class Point(object):
    def __init__(self, t):
        self.t = t
        mercury.compute(t)
        self.ra = mercury.ra


def find_inflection(p1, p2):
    if p2.t - p1.t < EPSILON:
        return p1.t + (p2.t - p1.t) / 2

    split = (p2.t - p1.t) / 3
    s1 = Point(p1.t + split)
    s2 = Point(p2.t - split)

    d1 = is_prograde(s1.ra, p1.ra)
    d2 = is_prograde(s2.ra, s1.ra)
    d3 = is_prograde(p2.ra, s2.ra)

    if d1 == d2 and d2 == d3:
        left_ext = Point(p1.t - EPSILON)
        right_ext = Point(p2.t + EPSILON)
        ld = is_prograde(p1.ra, left_ext.ra)
        rd = is_prograde(right_ext.ra, p2.ra)
        if d1 != ld:
            return find_inflection(left_ext, s1)
        if d3 != rd:
            return find_inflection(s2, right_ext)
        return None

    if d1 != d2:
        return find_inflection(p1, s2)
    return find_inflection(s1, p2)

def find_next_inflection(t):
    p1 = Point(t - INTERVAL)
    p2 = Point(t + INTERVAL)

    inflection = None
    while not inflection or inflection < t:
        inflection = find_inflection(p1, p2)
        p1 = Point(p1.t + INTERVAL)
        p2 = Point(p2.t + INTERVAL)
    return inflection

now = datetime.datetime.now()
inflection = find_next_inflection(now)
remaining = inflection - now

if remaining < 3 * EPSILON:
    inflection = find_next_inflection(inflection + 3 * EPSILON)
    remaining = inflection - now

prograde = is_prograde(Point(inflection).ra, Point(now).ra)
print_results(prograde, remaining)

