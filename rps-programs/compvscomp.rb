require './rps.rb'

HAND = { :rock => 1, :paper => 3, :scissors => 4 }

class ComputerVersusComputer

  def doTenTimes
      i=0
      10.times do
      i += 1
      possibles = HAND.keys

      a = Random.rand(possibles.length)
      b = Random.rand(possibles.length)

      param1 = possibles[a]
      param2 = possibles[b]

      puts "Game ##{i}: #{param1} versus #{param2}"

      rps = RockPaperScissors.new

      if param1==param2
        puts "tie"
        puts ""
        else
        winner = rps.play(param1, param2)
        puts winner + " wins"
        puts ""
        end
  end
  end
end

 g = ComputerVersusComputer.new
 g.doTenTimes
