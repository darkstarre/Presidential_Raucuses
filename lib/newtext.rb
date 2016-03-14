class Scene < Actor
  def enter()

    exit(1)
  end

class Intro < Scene
  def output(toon,motto)
    return "After a hard fought 6 months, you find yourself even in the public opinion polls.\nHow can the public not see what you are saying is the only way to proceed?\nThey must be morons.\n\n"
    return "It's the beginning of debate season, and a time of great change. Not only do you have the chance to #{motto}, but we have the chance to change the debate schedule and make arguing great again.\n\n"
    return "There is only one debate this year, and it is between all of the candidates. This is your shot, America will be yours again...\nI mean great, again.\n\n"
  end

  def moderator(toon, motto)
    return "The moderator takes her seat...\n".split("").each { |c| print c ; sleep 0.0    8}
    return "The first question looms...\n".split("").each { |c| print c ; sleep 0.08}
    return "The moderator laughs.\n".split("").each { |c| print c ; sleep 0.08}
  end
   
  def question(toon,motto)
    return "Moderator: #{toon}, our first question comes from George in Ohio.\nGeorge     wants to know, who would win in a cagefight?\nYou or Hillary Clinton?\n"
  end
end

class Initial < Scene
  def output(toon,motto)
    return "Having decided that a fight to the death is the only way to measure the ability of a candidate to #{motto}, you decide to go on the offensive.  Realizing that the other candidates also got to skip the metal detectors on the way in, you prepare for the worst by pulling out your trusty..."
  end
end

class Secondary < Scene
  def output(toon, motto)
    return "It doesn't take long for the other candidates to figure out what is going on.\nThey all start bickering amongst themselves.\nYou think to yourself that isolating them one at a time is the best idea.\n"
  end
end

class Tertiary < Scene
  def output(toon, motto)
    return "Who's next?"
  end
end

class Quaternary < Scene
  def output(toon, motto)
    return "Final boss time"
  end
end

class Death < Scene
  @@shittalking = [
    "OMGLOL UDED",
    "Perhaps politics just isn't for you.",
    "I bet you wish you would have quit while you were ahead and retired to your summer house in the Hamptons.",
    "Hope you were on the right side of that bible you kept thumping."
    "Getting eaten by protestors might have been a safer option."
  ]

  def died(toon,motto)
    puts @@shittalking[rand(0..(@@shittalking.length - 1))]
    exit(1)  
  end
end

class Actor
  include Choices

  def initialize(person)
    @trump    = [100,60,85]
    @clinton  = [95,70,60]
    @carson   = [60,100,75]
    @christie = [75,45,75]
    @rubio    = [65,90,90]
  end

  def npc()

  end
end

class Donald < Actor
  def selection(num)
    puts "You selected: The Donald! He's Yuuuuuuuuuge."
    puts "The Donald starts out with:\n100/100 moneys\n60/100 health\n85/100 charisma"
    puts "are you sure? Is this who you want to run the free world with?"

    double_check
  end

  def 
end

class Hillary < Actor

end

class Ben < Actor

end

class Marco < Actor

end

class Chris < Actor

end
