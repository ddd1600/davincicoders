require './rps.rb'
require './rpsdoai.rb'
require './compvscomp.rb'
require 'highline/import'

class ChooseType

  def choose
     x = ask("Choose game type: 1 for User vs User, 2 for User vs PC, 3 for PC vs PC")
  end

  def doIt
    if x == 1
      g = RockPaperScissors.new
      g.play
    elsif x == 2
      g = DoAIGame.new
      g.promptuser
    elsif x == 3
      g = ComputerVersusComputer.new
      g.doTenTimes
    else
      puts "Invalid input"
    end
  end
end

z = ChooseType.new
z.choose

