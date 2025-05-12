class Bank:
    def __init__(self,bal,acc_no):
        self.bal = bal
        self.acc_no = acc_no

    def debit(self,deb_amt):
        self.bal = self.bal-deb_amt
        print(f"The debited amount is {deb_amt} and the remaining balance is   {self.bal}")

    def credit(self,cre_amt):
        self.bal = self.bal + cre_amt
        print(f"The credited amount is {cre_amt} and the remaining balance is  {self.bal}")


acc1=Bank(90000,786)
acc1.debit(2000)  
acc1.credit(3000) 
acc1.debit(7000)  
acc1.credit(23000) 


