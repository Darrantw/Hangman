#Hangman.rb
require "pry"

#Don't need to make an option for computer to guess, can remove some methods.


class HumanPlayer
  def initalize
  end

  def word
  puts "Type in the word that your opponent must try to guess:"
  @word = gets.chomp.upcase 
  end

  def hangman
    @word
  end

  def guess 
    puts "Please enter a letter you think the word might contain, or the whole word itself. This is your #nth guess. You have (limiit - n) guesses left."
    @guess = gets.chomp.to_s
  end
end

class Game
  def initalize

  end

  def writer_or_guesser(player1)
  puts "Do you want to pick a word for the computer to guess or try to guess the computer's word? /n Type 'writer' or 'guesser'."
  @answer = gets.chomp.downcase

  if @answer == "writer"
    player_writer
  elsif @answer == "guesser"
    player_guesser
  else
    puts "Sorry, try again."
    writer_or_guesser
  end

  end

  def player_writer
  end

  def player_guesser
  end

  def human_display(player1)
    @secret_word = player1.hangman 
    @display = '-' * @secret_word.size
    @array = @secret_word.split("")
  end

  def guess_placer(guesser)
  
  end
  def computer_display(computer)
   
  end

  def feedback
  end

  def outcome
  end

end

class Computer
  def initalize
  end

  def word
  end

  def guess 
  end

end
player1 = HumanPlayer.new
game = Game.new
computer = Computer.new
player1.word
game.human_display(player1)
