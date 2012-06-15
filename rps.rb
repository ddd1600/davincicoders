class RockPaperScissors

    HAND = { :rock => 1, :paper => 3, :scissors => 4 }

  def play(param1, param2)

    determinant = HAND[param1] + HAND[param2]

    if(determinant==2)
      puts "tie"
    elsif(determinant==4)
      puts "paper"
    elsif(determinant==5)
      puts "rock"
    elsif(determinant==6)
      puts "tie"
    elsif(determinant==7)
      puts "scissors"
    elsif(determinant==8)
      puts "tie"
    else
      puts "invalid parameters"
    end

  end
end
