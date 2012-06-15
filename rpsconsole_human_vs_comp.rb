require("./rps.rb")

HAND = { :rock => 1, :paper => 3, :scissors => 4 }

class DoAIGame
  def promptuser
    loop do
      $stdout.write("Player 1: ")
      param1 = $stdin.gets.chomp
      param1 = param1.to_sym
      break if param1 == :quit

      possibles = HAND.keys
      param2 = possibles[Random.rand(possibles.size)]

      rps9 = RockPaperScissors.new
      winner = rps9.play(param1, param2)
      if winner == param1
        puts "Human wins."
      elsif winner == "tie"
        puts "No one won."
      elsif winner == "invalid parameters"
        puts winner
      else
        puts "Computer beats human."
      end
    end
    end
    end

g = DoAIGame.new
g.promptuser
