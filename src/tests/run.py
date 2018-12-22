# /usr/bin/python
import subprocess
# subprocess.Popen("ls")


import os
os.system('ls; mkdir grammar; cp Dragon.g4 ./grammar;')

os.chdir('./grammar')


# os.system("alias antlr4='java -jar /usr/local/lib/antlr-4.7.1-complete.jar'  ")


# os.system("alias grun='java org.antlr.v4.runtime.misc.TestRig'")

grun = 'java org.antlr.v4.runtime.misc.TestRig '
# grun Expr prog -gui t.expr # launches org.antlr.v4.runtime.misc.TestRig

testdir = "../"
for file in os.listdir(testdir):
    if file.endswith(".t"):
        filename = os.path.join(testdir, file)
        print(filename)
        # os.system(grun + 'Dragon block -tree ../block1.t')
        os.system(grun + 'Dragon block -tree ' + filename)


# subprocess.call("mkdir grammar")
# subprocess.Popen("cp Dragon.g4 ./grammar")
# subprocess.Popen("ls")


# subprocess.Popen("cp Dragon.g4 ./grammar")
