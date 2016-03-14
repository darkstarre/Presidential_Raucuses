#!/usr/bin/env ruby

require 'politics'

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

print "After a hard fought 6 months, you find yourself     even in the public opinion polls.\nHow can the public n    ot see what you are saying is the only way to proceed?\nThey must be morons.\n\n"
sleep 2
      
print "It's the beginning of debate season, and a time of great change. Not only do you have the chance to make America great again, but we have the chance to change the debate schedule and make arguing great again.\n\n"
sleep 2
         
print "There is only one debate this year, and it is between all of the candidates. This is your shot, America will be yours again...\nI mean great, again.\n\n"
sleep 2

"The moderator takes her seat...\n".split("").each { |c| print c ; sleep 0.08}
"The first question looms...\n".split("").each { |c| print c ; sleep 0.08}
"The moderator laughs.\n".split("").each { |c| print c ; sleep 0.08}
                
print "Moderator: Mr. Trump, our first question comes f    rom George in Ohio.\nGeorge wants to know, who would win in a cagefight?\nYou or Hillary Clinton?\n"
sleep 2
                   
print "The audience chuckles. This is your shot.\nYou tell the audience that you don't need to answer this question.\nYou slick your hair into it's signature swirl and slink over to Hillary's podium.\n"
sleep 2
   
print "As you saunter to just a mere inchess before her, She begind to spin. First slowly, then quickly building to a whirlwind.\nThe conservative blue pantsuit she was wearing flashes rapidly and morphs into a patriotic mess of sparkles and gold lame'.\n"
sleep 2
      
print "The expression on her face has turned from stoic, to maniacal.\nHer eyes shine with the fire of burned aspirations and hopes, a determination to excell at all costs.\n"
sleep 2
        
"You know what you have to do\n".split("").each { |c| print c ; sleep 0.08}
