class RockPaperScissors

    HAND = { :rock => 1, :paper => 3, :scissors => 4 }

  def play(param1, param2)

    determinant = HAND[param1] + HAND[param2]

    if(determinant==2)
      "tie"
    elsif(determinant==4)
      "paper"
    elsif(determinant==5)
      "rock"
    elsif(determinant==6)
      "tie"
    elsif(determinant==7)
      "scissors"
    elsif(determinant==8)
      "tie"
    else
      "invalid parameters"
    end

  end
end
