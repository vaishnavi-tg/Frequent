class Student:
    def __init__(self,phy,che,math):
        self.phy = phy
        self.che = che
        self.math = math
    
    @property
    def percentage(self):
        return str((self.phy+self.che+self.math)/3)+"%"
    
stu1=Student(34,67,89)
print(stu1.percentage)

stu1.phy=67
print(stu1.percentage)
