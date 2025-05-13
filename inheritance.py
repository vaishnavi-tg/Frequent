class Car:
    @staticmethod
    def start():
        print("Car started..")

    @staticmethod
    def stop():
        print("Car stop..")    


class ToyotaCar(Car):
    def __init__(self,firstname):
        self.firstname=firstname
        print("Name of the car is",self.firstname)        



car1 = ToyotaCar("Breeza")
car1.start()
car1.stop()