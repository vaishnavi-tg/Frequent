class Car:
    @staticmethod
    def start():
        print("Car started")
    @staticmethod
    def stop():
        print("Car stopped")    


class ToyotaCars(Car):
    def __init__(self,model):
        self.model = model
        print(f'Car model is {self.model}')

class fortuner(ToyotaCars):
    def __init__(self,model,type):
        super().__init__(model)
        self.type = type
        print(f"The model of Toyatocar is {self.model} and it uses {self.type}")


car1 = fortuner("fortuner","Disel")
car1.start()

