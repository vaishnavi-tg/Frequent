take = input("Enter a number or a string that you check as a palindrome \n ")
reversed = take[::-1]
if(reversed==take):
    print("Palindrome")
else:
    print("Not a palindome")    