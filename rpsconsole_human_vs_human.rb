require("./rps.rb")

class DoGame
  def promptuser
    loop do
      $stdout.write("Player 1: ")
      param1 = $stdin.gets.chomp
      param1 = param1.to_sym
      break if param1 == :quit

      $stdout.write("Player 2: ")
      param2 = $stdin.gets.chomp
      param2 = param2.to_sym
      break if param2 == :quit

      rps9 = RockPaperScissors.new
      rps9.play(param1, param2)
      end
  end
end

g = DoGame.new
g.promptuser
