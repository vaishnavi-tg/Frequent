num1=int(input())
num2=int(input())
try:
    print(num1/num2)
except ZeroDivisionError:
    print("Number cannot be divided by Zero")
finally:
    print("Thank You")    