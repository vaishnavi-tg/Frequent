class Account:
    def __init__(self,accNo,accPass):
        self.accNo = accNo
        self.__accPass = accPass

    def reset(self):
        print(self.__accPass)

acc1 = Account("12345","56789")
print(acc1.accNo)
acc1.reset