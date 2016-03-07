require 'io/console'
require 'politics'

class GameTest < Minitest::Test
  def test_displays_all_information_and_allows_you_to_quit
    clear = "\e[H\e[2J"
    game = Politics::Cli.new # <-- this thing can know about the command line, push the logic below it

    if the string assertions get annoying, switch this to match against regexes
      # (assert_match and a regex instead of assert_equal and a string)
      to_print = game.input("")
      assert_equal "Welcome to the Presidential Raucuses!", to_print

      to_print = game.input("\n")
      assert_equal "...and what you will fall for!", to_print

      to_print = game.input("\n")
      assert_equal "#{clear}After a hard fought 6 months, you find yourself even in the public opinion polls.\nHow can the public not see what you are saying is the only way to proceed?\nThey must be morons.\n\n"+
        "It's the beginning of debate season, and a time of great change. Not only do you have the chance to make America great again, but we have the chance to change the debate schedule and make arguing great again.\n\n"+
        "There is only one debate this year, and it is between all of the candidates. This is your shot, America will be yours again...\nI mean great, again.\n\n"+
        "The moderator takes her seat...\n"+
        "The first question looms...\n"+
        "The moderator laughs.\n",
        to_print

      to_print = game.input("\n")
      assert_equal "Moderator: Mr. Trump, our first question comes from George in Ohio.\n"+
        "George wants to know, who would win in a cagefight?\n"+
        "You or Hillary Clinton?\n",
        to_print

      to_print = game.input("\n")
      assert_equal "The audience chuckles. This is your shot.\n"+
        "You tell the audience that you don't need to answer this question.\n"+
        "You slick your hair into it's signature swirl and slink over to Hillary's podium.\n",
        to_print

      to_print = game.input("\n")
      assert_equal "As you saunter to just a mere inchess before her,  She begind to spin. First slowly, then quickly building to a whirlwind.\n"+
        "The conservative blue pantsuit she was wearing flashes rapidly and morphs into a patriotic mess of sparkles and gold lame'.\n",
        to_print

      to_print = game.input("\n")
      assert_equal "The expression on her face has turned from stoic, to maniacal.\n"+
        "Her eyes shine with the fire of burned aspirations and hopes, a determination to excell at all costs.\n",
        to_print

      to_print = game.input("\n")
      assert_equal "You know what you have to do\n", to_print

      # maybe more talking?

      to_print = game.input("\n")
      assert_equal "Do you:\n" +
        "1. Pull the sharpened pen you stole from the bank from your hair?\n" +
        "2. Have a heart attack.\n",
        to_print

      refute game.over?
      to_print = game.input("2\n")
      assert game.over?
      assert_equal "You died of a heart attack.\nThe end.\n", to_print
    end
  end
end
