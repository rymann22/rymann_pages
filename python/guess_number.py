import random
import math
# comment
lowest = int(input('Enter the lowest number: '))
"""
more comments
about stuff
"""
highest = int(input('Enter the highest number: '))

x = random.randint(lowest, highest)

print("\n\tYou've only ",
       round(math.log(highest - lowest + 1, 2)),
      " chances to guess the integer!\n")

count = 0

while count < math.log(highest - lowest + 1, 2):
    count += 1
 
    # taking guessing number as input
    guess = int(input("Guess a number:- "))
 
    # Condition testing
    if x == guess:
        print("Congratulations you did it in ",
              count, " try")
        # Once guessed, loop will break
        break
    elif x > guess:
        print("You guessed too small!")
    elif x < guess:
        print("You Guessed too high!")
 
# If Guessing is more than required guesses,
# shows this output.
if count >= math.log(highest - lowest + 1, 2):
    print("\nThe number is %d" % x)
    print("\tBetter Luck Next time!")
