=begin
The game is based around the 2016 run-up to the election.  Player selects a
character based on a typical candidate archetype, as follows:


  ***Basic gameplay is centered around three standard abilities

   1. Attack - flat dmg based on weapon, but weapon speed affects turn frequency
   2. Block - absorbs % damage based on toughness
   3. Heal - heals % of health based on charisma

   ***Candidates have attributes:


   marco_rubio = { "health" => 80, "toughness" => 20}
   donald_trump = { "health" => 70, "toughness" => 60}
   ben_carson = { "health" => 60, "toughness" => 80}


 ***Weapons are a function of a dmg value and a speed modifier that affects turns.  Thus,
   for something like:

   machete = { "attack power" => 60, "attack speed" => 0.5}
   switchblade = { "attack power" => 25, "attack speed" => 1.0}

   the switchblade will attack 2 times for every 1 attack from machete, but the avg
   damage for the machete is higher. eg. (60*0.5) = 30  vs (25*1) = 25.



 ======================== SAMPLE GAMEPLAY ===============================


Each of the potential candidates represents a "mini-boss fight," with unique
mechanics that the player will need to uncover.  Hints might be provided before
the encounter begins.  Thus, the interaction might be as follows:
PLAYER INPUT: player selects either letter or name of person to attack

<${chosen_candidate}> has been hounding you all debate -- frankly, he had it coming.
He might suck at politics, but rumors swirl that <${chosen_candidate} can <${chosen_
candidate's_special_perk}.  Keeping this in mind, what will you do next?

 a. Attack   <----
 b. Block    <----
 c. Bask in the Applause   <---- equivalent to 'heal'
 c. Use special ability  (stretch goal)


^^^^ This process cycles until one of the opponents' health reaches zero (0).






Things To clarify:

* Attributes/actions that would allow us to make good use of modules/blocks
* Where would a linked list be most effective among the data sets that we will
have to build & access in order to make the game run?

Stretch functionality:

* The ability to use your newly-defeated opponent's weapon
* Implementing one special ability for each character
* Easter eggs?
* Defeating fellow candidates = more delegates = improved stats for RPG feel
end

=begin
=================================================SAMPLE RUNTHROUGH===================================================================
#Welcome to the Presidential Raucuses! \n
#Get ready to show the public what you stand for...
#
#And what you will fall for.
#
#:Screen clear.
#
#
#Who would you like to represent this campaign as this season?
#\ePlayer Choice:
# 1. Donald Trump
# 2. Ben Carson
# 3. Marco Rubio
# 4. Hillary Clinton
# 5. Chris Christie
#
# You selected: 1. THE DONALD. He's Huuuuuge.
# The Donald starts out with:
#     100/100 moneys
#     60/100  health
#     85/100  charisma
#
# :Screen clear
# "After a hard fought 6 months, you find yourself even in the public opinion polls. How can the public not see what you are saying is the only way to proceed? They must be morons.
# It's the beginning of debate season, and a time of great change. Not only do you have the chance to make America great again, but we have the chance to change the debate schedule and make arguing great again.
# There is only one debate this year, and it is between all of the candidates. This is your shot, America will be yours again, I mean great, again.
#
#
# The moderator takes her seat...
# The first question looms...
# The moderator laughs.
#
# Moderator :Mr. Trump, our first question comes from George in Ohio. George wants to know, who would win in a cagefight? You or #{rdmchar} :Hillary Clinton?
# The audience chuckles. This is your shot. You tell the audience that you don't need to answer this question. You slick your hair into it's signature swirl and slink over to Hillary's podium.
#
# As you saunter to just a mere inchess before her,  She begind to spin. First slowly, then quickly building to a whirlwind. The conservative blue pantsuit she was wearing flashes rapidly and morphs into a patriotic mess of sparkles and gold lame'.
#
# The expression on her face has turned from stoic, to maniacal. Her eyes shine with the fire of burned aspirations and hopes, a determination to excell at all costs.
#
# You know what you have to do...
#
# Which is:
# 1. Run away to the safety of your private jet
# 2. Fight!
# 3. Drop out of the election(You will never be a write in)
# 4. Beg for mercy
#
#
#
# Having decided that a fight to the death is the only way to measure the ability of
a candidate to "Make America great again", you decide to go on the offensive.  Realizing that the other candidates also got to skip the metal detectors on the way in, you prepare for the worst by pulling out your trusty...

# 1. sharpened pen you stole from your bank.
# 2. audience member to place them between you and Hillary.
# 3. breathing exercises you've been learning in yoga.
# 4. mirror. Maybe she'll melt.

# Ah, the pen. Decent choice...
#
# While not ideal in every situation, you're banking on the fact that it can get you out of trouble in one click. "You think I am afraid
# of a pen." cries out Killary.  "I will break you like NAFTA broke the unions."  As you approach and
# ready for battle, you do what you always do when face with serious trouble, you write a check. One thing you know is that your money
# can buy a lot and when it cannot buy it your Daddy's money can buy the rest.  So as you make the checks out to Hillary and toss them
# at her.  She gets distrached and starts to pick up the checks.  You smack her across the head and 
# stab her in the neck.  Killing her.
#
# :screen clear
# Do you:
# 1. Pull the sharpened pen you stole from the bank from your hair?
# 2. Grab an audience member and place them between you and Hillary?
# 3. Remember all of those breathing exercises you've been learning in yoga?
# 4. Return to your podium and just answer the damn question?
#
#  You prick 2
#
#  You grab an audience member and place them between you and Killary.  While shocked at first, the audience member welcomed the chance
#  to show off his Aaron Burr cosplay outfit. As this Tea Party member turns to Hillary to lecture her on the values of Hermin Cain's
#  9 9 9 plan, she quickly bites his head off.  As Hillary starts to run towards you run and hide.  (Loss of a turn)
#
#
#

#
# :screen clear
# Do you:
# 1. Pull the sharpened pen you stole from the bank from your hair?
# 2. Grab an audience member and place them between you and Hillary?
# 3. Remember all of those breathing exercises you've been learning in yoga?
# 4. Return to your podium and just answer the damn question?
#
# You selected 3. You are so good at breathing.  While the breathing exercises are helping you to relax, you start thinking of all the
# the wrongs you have committed.  Maybe, America is still great?  Pow, right than Killary smacks you cross the head. (30 points are
# taking away.)  As you hit the ground Killary jumps on top of you and puts you into a triangle chokehold.  "You come after me with
# a breathing exercises!  You think that is going to scare me!  Try having Fat Bill Clinton sleep on top of you for 30 years. I hope
# you enjoy this chokehold.  The NYPD taught it to me and its a killer."  CRACK!  Your neck is broken and you die with your head buried
# into the absolute zero of Killary's crotch.
#
#
creen clear
# Do you:
# 1. Pull the sharpened pen you stole from the bank from your hair?
# 2. Grab an audience member and place them between you and Hillary?
# 3. Remember all of those breathing exercises you've been learning in yoga?
# 4. Return to your podium and just answer the damn question?
#
#  You pick 4.  You picked a reasonalble and mature response for any debate.  Except this is the Republican debate and answering the
#  questions is a sign of communism.  As a group, Killary, Carlson, Christy and Rubio circle you. There are skarks in the water and
#  you are the chum. You scream as they tear you apart.
#=end
#
