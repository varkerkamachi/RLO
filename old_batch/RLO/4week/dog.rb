class Dog
  def initialize(name, breed, gender)
    @name = name
    @breed = breed
    @gender, @gender_pronoun = find_gender(gender)
  end

  def bark
    "#{@name}" " barks like 'rruff, rruff!' and " "#{@gender_pronoun}'s" " super annoying!"
  end

  def eat
    "#{@name}" " sounds like 'nom nom nom' when " "#{@gender}" " eats."
  end

  def chase_cat
    "#{@name}" " chases a cat"
  end

  def display_info
    "This dog - " "#{@gender_pronoun}" " is a(n) " "#{@breed}" " named " "#{@name}"
  end

  def find_gender(gender=nil)
    return 'it' unless gender
    girl = ['she','girl','female','her']
    boy = ['he','boy','male','him']
    if(girl.index(gender))
      @gender, @gender_pronoun = 'girl', 'she'
    elsif(boy.index(gender))
      @gender, @gender_pronoun = 'boy', 'he'    
    else
      @gender, @gender_pronoun = 'it'
    end
  end

end


d = Dog.new('alpo', 'lhasa apsa', 'male')

puts d.display_info

puts d.bark

puts d.chase_cat

puts d.find_gender('female')
