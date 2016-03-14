Class Actor
  def initialize
    @donald = [100,60,85]
    @hillary = [95,70,60]
  end

  def donald
    puts "You selected: The Donald! He's Yuuuuuuuuuge."
    puts "The Donald starts out with:\n100/100 moneys\n60/100 health\n85/100 charisma"
    #place a are you sure?
  end
end

Class Choices
  def candidate_choice
    puts "1. Donald Trump\n2. Ben Carson\n3. Marco Rubio\n4. Hillary Clinton\n5. Chris Christie"
    character = gets.chomp
    case character
    when "1"
      donald
    when "2"
      ben
    when "3"
      marco
    when "4" 
      hillary
    when "5"
      chris
    else
      "Please enter a valid choice."
    end
  end

  def fight_choice
    puts "Which is:\n1. Run away to the safety of your private jet.\n2. Fight!\n3. Drop out of the election(You will never be a write in)\n4. Beg for mercy"
    choice = gets.chomp
    case choice
    when "1"
      puts "COWARD"
    when "2"
      fight
    when "3"
      puts "COWARD"
      exit
    when "4"
      puts "COWARD"
    else
      "Please enter a valid choice."
    end
  end

def fight(player,npc)
  
end


fight_choice

