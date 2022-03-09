require './question'	

class Game < Question
  attr_accessor :player1, :player2, :current_player

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @player1.lives = 3
    @player2.lives = 3
    @current_player = player1.name
  end

  def switch_player
    @current_player = @current_player == @player1.name ? @player2.name : @player1.name
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0  ? true : false
  end

  def question 
    answer = ask_question(@current_player)
    if answer
      puts "YES! You are correct!"
    else
      puts "Seriously? No!"
      @current_player == @player1.name ? @player1.lives -= 1 : @player2.lives -= 1
    end
  end

  def display_player_score
     puts "Player1 #{@player1.lives}/3 vs Player2 #{@player2.lives}/3"
  end
  
  def play
    while !game_over?
      question
      switch_player
      display_player_score
    end
    puts "Game Over"
    puts "#{@player1.lives == 0 ? @player2.name : @player1.name} wins with a score of #{@player1.lives == 0 ? @player2.lives : @player1.lives}/3"
  end

end



