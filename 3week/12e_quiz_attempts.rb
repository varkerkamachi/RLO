def get_quiz_participants
  quiz = [0,0,0,2,0,0,3,4,0,5] # !> assigned but unused variable - quiz
end
 
def quiz_status( status, val )
  status_positive, status_negative, participants = [],[],[]
  participants = get_quiz_participants
  participants.each do |x|
    x == val ? status_positive.push(x) : status_negative.push(x)
  end
  if( val == 0 ) # 0 inferring a negative in the output...
    print "The number of participants who did not #{status} Quiz 1 is #{status_negative.size} out of #{participants.size} total participants."
  else
    print "The number of participants who #{status} Quiz 1 is #{status_positive.size} out of #{participants.size} total participants."
  end
end
 
quiz_status( 'completed', 1)
 
quiz_status( 'not completed', 0) 
# >> The number of participants who completed Quiz 1 is 0 out of 10 total participants.The number of participants who did not not completed Quiz 1 is 4 out of 10 total participants.
s1,s2 = s.split('=')
