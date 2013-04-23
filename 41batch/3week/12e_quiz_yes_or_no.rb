# I have a database of all the course participants. I want to know the number of participants who have not attempted Quiz 1 (is it so scary ?). A student writes a clever Ruby program that creates an array of 0's and 1's. 0's indicate that the participant has not attempted the Quiz and the 1's have attempted it.
# 
# Use this array quiz:
# quiz = [0,0,0,1,0,0,1,1,0,1]
# and write another clever program to solve my problem. That is display thenumber of participants who have not attempted Quiz 1.
# 
# The output of your program should be as follow:
# The number of participants who did not attempt Quiz 1 is x out of y total participants.

quiz_takers = [0,0,0,1,0,0,1,1,0,1]

def find_quiz_incompletes( key, arr )
  count, output = 0, ''
  arr.map{|n| n === key ? count += 1 : count}
  if count !=0
    output = "The number of participants who did not attempt Quiz 1 is #{count} out of #{arr.size} total participants."
  else
    output = "All #{arr.size} participants attempted Quiz 1 - it's a miracle!"
  end
end

puts find_quiz_incompletes(0, quiz_takers)
