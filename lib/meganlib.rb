module Candidates

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

  def double_check
    puts "This is your last chance. Are you sure?"
    answer = gets.chomp.upcase
    if answer == 'Y'
      "You know what you have to do\n".split("").each { |c| print c ; sleep 0.08}
      intro_scene
    else
      puts "Try again..."
      candidate_choice
    end
  end

  def donald
    puts "You selected: The Donald! He's Yuuuuuuuuuge."
    puts "The Donald starts out with:\n100/100 moneys\n60/100 health\n85/100 charisma"
    puts "Are you sure? Is this who you want to run the free world with?"
    double_check
  end

  def intro_scene
    puts "After a hard fought 6 months, you find yourself even in the public opinion polls.\nHow can the public not see what you are saying is the only way to proceed?\nThey must be morons.\n\n"
    puts "It's the beginning of debate season, and a time of great change. Not only     do you have the chance to make America great again, but we have the chance to change the debate sche    dule and make arguing great again.\n\n"
    puts "There is only one debate this year, and it is between all of the candidat    es. This is your shot, America will be yours again...\nI mean great, again.\n\n"
   #moderator
    "The moderator takes her seat...\n".split("").each { |c| print c ; sleep 0.08}
    "The first question looms...\n".split("").each { |c| print c ; sleep 0.08}
    "The moderator laughs.\n".split("").each { |c| print c ; sleep 0.08}
    "Moderator: Our first question comes from George in Ohio.\nGeorge wants to know, who would win in a cagefight?\nYou or Hillary Clinton?\n"
    initial_scene
  end

  def initial_scene
   puts "Having decided that a fight to the death is the only way to measure the ability of a candidate to make America great again, you decide to go on the offensive.  Realizing that the other candidates also got to skip the metal detectors on the way in, you prepare for the worst by pulling out your trusty..."  
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
end
