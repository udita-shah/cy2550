#!/usr/bin/env python3
import argparse
import random

parser = argparse.ArgumentParser(\
description='Generate a secure, memorable password using the XKCD method',\
epilog="https://www.xkcd.com/936/")
parser.add_argument('-w', '--words', type=int, default=4,
help='include WORDS words in the password (default=4)')
parser.add_argument('-c', '--caps', type=int, default=0,
help='capitalize the first letter of CAPS random words (default=0)')
parser.add_argument('-n', '--numbers', type=int, default=0,
help='insert NUMBERS random numbers in the password (default=0)')
parser.add_argument('-s', '--symbols', type=int, default=0,
help='insert SYMBOLS random symbols in the password (default=0)')
args = parser.parse_args()

# returns a random word from wordlist file
lines = open('words.txt').read().splitlines()
def randWord():
    # lines = open('word.txt').read().splitlines()
    # return random.choice(lines)
    r = random.choice(lines)
    lines.remove(r)
    return r

words = []
for i in range(0, args.words):
    if (args.caps > 0):
        words.append(randWord().capitalize())
        args.caps -= 1
    else:
        words.append(randWord())
        # words = randWord().copy()
print(words)
password = ''

# add symbols to password
if args.symbols > 0:
    s = random.sample(["~","!","@","#","$","%","^","&","*",".",":",";"], args.symbols)
    print(s, password)
    words = words + s
    random.shuffle(words)
    args.symbols -= 1

# add numbers to password
if args.numbers > 0:
    n = random.sample(["0","1","2","3","4","5","6","7","8","9"], args.numbers)
    words = words + n
    random.shuffle(words)
    args.numbers -= 1

if args.symbols != 0 and args.numbers != 0:
    password_length = args.words + args.symbols + args.numbers + 2
elif (args.symbols == 0 and args.numbers == 0):
    password_length = args.words 
else:
    password_length = args.words + args.symbols + args.numbers + 1

for i in range(0, password_length):
    w = random.choice(words)
    words.remove(w)
    print(w)
    password += w

print(password)