class student:
    def __init__(self,name):
        self.name = name
    def wish(self):
        print(f'Hello Good Morning {self.name}')    

s1=student("vaishnavi")
s1.wish()
del s1
s1.wish()