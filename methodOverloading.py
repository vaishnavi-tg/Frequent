class Calculator:
    def add(self, *args):
        return sum(args)

calc = Calculator()
print(calc.add(1, 2))             # Output: 3
print(calc.add(1, 2, 3, 4, 5))    # Output: 15



#Without args
class Calculator:
    def add(self, a=0, b=0, c=0):
        return a + b + c

# Using method overloading style
calc = Calculator()
print(calc.add(5))           # Output: 5
print(calc.add(5, 10))       # Output: 15
print(calc.add(5, 10, 15))   # Output: 30
