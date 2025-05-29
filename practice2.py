class Employee:
    def __init__(self,role,department,salary):
        self.role=role
        self.department=department
        self.salary=salary

    def showDetails(self):
        print(f"The role of the employee is {self.role} and belongs to the department {self.department} and the salary is {self.salary}")

class Engineer(Employee):
    def __init__(self,name,age):
        self.name=name
        self.age=age
        super.__init__(showdetails)
