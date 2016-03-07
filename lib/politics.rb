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

def donald
  puts "You selected: The Donald! He's Yuuuuuuuuuge."
  puts "The Donald starts out with:\n100/100 moneys\n60/100 health\n85/100 charisma" 
  #place a are you sure?
end

def fight

end

"Welcome to the Presidential Raucuses!".split("").each { |c| print c ; sleep 0.08}
sleep 3
puts "\nGet ready to show the public what you stand for..."
sleep 3
puts "...and what you will fall for!"
sleep 2

system "clear"

puts "Press 'h' for help, and 'q' to quit. Press any other key to continue."
user_input = $stdin.gets.chomp.to_s
if user_input == "q"
  puts "You've died because you suck"
  exit
elsif  user_input =="h"
  puts "What would you like help with?"
else
  puts "Who will you be campaigning as?"
  candidate_choice
end

sleep 5
system "clear"

print "After a hard fought 6 months, you find yourself even in the public opinion polls.\nHow can the public not see what you are saying is the only way to proceed?\nThey must be morons.\n\n"
sleep 2

print "It's the beginning of debate season, and a time of great change. Not only do you have the chance to make America great again, but we have the chance to change the debate schedule and make arguing great again.\n\n"
sleep 2

print "There is only one debate this year, and it is between all of the candidates. This is your shot, America will be yours again...\nI mean great, again.\n\n"
sleep 2

"The moderator takes her seat...\n".split("").each { |c| print c ; sleep 0.08}
"The first question looms...\n".split("").each { |c| print c ; sleep 0.08}
"The moderator laughs.\n".split("").each { |c| print c ; sleep 0.08}

print "Moderator: Mr. Trump, our first question comes from George in Ohio.\nGeorge wants to know, who would win in a cagefight?\nYou or Hillary Clinton?\n"
sleep 2

print "The audience chuckles. This is your shot.\nYou tell the audience that you don't need to answer this question.\nYou slick your hair into it's signature swirl and slink over to Hillary's podium.\n"
sleep 2

print "As you saunter to just a mere inchess before her,  She begind to spin. First slowly, then quickly building to a whirlwind.\nThe conservative blue pantsuit she was wearing flashes rapidly and morphs into a patriotic mess of sparkles and gold lame'.\n"
sleep 2

print "The expression on her face has turned from stoic, to maniacal.\nHer eyes shine with the fire of burned aspirations and hopes, a determination to excell at all costs.\n"
sleep 2

"You know what you have to do\n".split("").each { |c| print c ; sleep 0.08}

fight_choice

