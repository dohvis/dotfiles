#!/usr/bin/python3
import subprocess as sp

def system(command):
    if "|" in command:
        commands = command.split("|")
        p1 = sp.Popen(commands[0].split(), stdout=sp.PIPE)
        p2 = sp.Popen(commands[1].split(), stdin.p1.PIPE)
        result, err = p2.communicate()
        return result
    result = sp.run(command.split(), stdout=sp.PIPE)
    return result.stdout.decode('utf-8')

commands = [
    'apt-get install zsh git-core',
    'wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O | zsh',
    'chsh -s `which zsh`',
]

for c in commands:
    print(system(c))

