import subprocess

standard_put = subprocess.getoutput("../../bin/lexer ./test")
print(standard_put)
my_put = subprocess.getoutput("./lexer ./test")

My_put = my_put.split("\n")
standard_put =standard_put.split("\n")

# for i in standard_put:
    # if 
for i in range(len(standard_put)):
    if standard_put[i] == My_put[i]:
        pass
    else:
        print("My:"+My_put[i]+"\t"+"Standard:"+standard_put[i])

