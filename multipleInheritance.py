class A:
    varA="Welcome to class A"

class B:
    varB="Welcome to class B"

class C(A,B):
    varC="Welcome to class C"    


obj=C()
print(obj.varC)
print(obj.varB)
print(obj.varA)
