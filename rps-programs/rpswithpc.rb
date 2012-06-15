class RockPaperScissorsAI

  HAND = { :rock => 1, :paper => 3, :scissors => 4 }
  @paramcheck = ["rock", "paper", "scissors"]

  def play(param1)
    possibles = HAND.values

    # returns an ARRAY of the values of HAND [1, 3, 4] indexed by [0, 1, 2]

    param2 = possibles[Random.rand(HAND.values.size)]

    determinant = HAND[param1] + param2
    if(determinant==2)
      results = "tie"
      puts results
    elsif(determinant==4)
      results = "paper"
      puts results
    elsif(determinant==5)
      results = "rock"
      puts results
    elsif(determinant==6)
      results = "tie"
      puts results
    elsif(determinant==7)
      results = "scissors"
      puts results
    elsif(determinant==8)
      results = "tie"
      puts results
    else
      results = "invalid parameters"
      puts results
    end
  end
end
