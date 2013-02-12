# DOES NOT WORK AS IS
puts "This program does not work as expected, please fix... vhgiii"

class Granny
  attr_reader :name
  attr_accessor :bye_count
  def initialize name = 'Granny', bye_count = 0
    @name = name
    @bye_count = bye_count
    talk_to_granny
  end

  def talk_to_granny
    print 'Say something to granny: '
    sonny_says = gets.chomp
    puts sonny_says.length < 1 ? talk_to_granny : granny_responds_to(sonny_says)
  end

  def granny_responds_to(sonny_says)
    bye?(sonny_says) ? bye_response : silly_response(sonny_says)
  end

  def bye?(input)
    input == 'BYE' && @bye_count >= 2
  end

  def bye_response
    "Bye, sonny!"
  end

  def silly_response(sonny_says)
    if sonny_says == 'BYE'
      @bye_count += 1
      "WHAT WAS THAT? COULDN'T HEAR YA SONNY!"
    elsif sonny_says == sonny_says.upcase
      @bye_count = 0
      "NO, NOT SINCE " + "#{random_year()}!"
    else
      @bye_count = 0
      "HUH? SPEAK UP SONNY! "
    end
    talk_to_granny
  end

  private

  def random_year(y=1930)
    y + rand(20)
  end
end

gran = Granny.new('Grams', 0)
