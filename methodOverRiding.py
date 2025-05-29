class A:

    def show(self):
        print("In A Show")

class B(A):
    # def show(self):
    #     print("In B show")
    pass

a1=B()
a1.show()


class Animal:
    def speak(self):
        print("Animal makes a sound")

class Dog(Animal):
    def speak(self):
        print("Dog barks")

# Creating objects
a = Animal()
d = Dog()

a.speak()  # Output: Animal makes a sound
d.speak()  # Output: Dog barks
