class Game

  def self.compare_hands(player1, player2)
    if (player1 == "rock" && player2 == "rock") ||
       (player1 == "scissors" && player2 == "scissors") ||
       (player1 == "paper" && player2 == "paper")
      return "This game is a DRAW!"
    elsif (player1 == "rock" && player2 == "scissors") ||
          (player1 == "scissors" && player2 == "paper") ||
          (player1 == "paper" && player2 == "rock")
      return "Player 1 WINS!"
    elsif (player1 == "rock" && player2 == "paper") ||
          (player1 == "scissors" && player2 == "rock") ||
          (player1 == "paper" && player2 == "scissors")
      return "Player 2 WINS!"
    end
  end

end
