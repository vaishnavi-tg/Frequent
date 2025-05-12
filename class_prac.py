class Student:
    
    def __init__(self,name,marks1,marks2,marks3):
        self.name=name
        self.marks1=marks1
        self.marks2=marks2
        self.marks3=marks3

    def display_marks(self):
        avg=(self.marks1+self.marks2+self.marks3)/3
        print(f'Average of three marks {self.name} is {avg}')    


s1=Student("vaishnavi",45,78,45)
s1.display_marks()