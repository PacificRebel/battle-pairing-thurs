require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_turn, :lost

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @defender = player2
    @lost = false
  end

  def attack
    if @current_turn == @player1
      p1_attack_p2
      @current_turn = @player2
      # @defender = @player1
    else
      p2_attack_p1
      @current_turn = @player1
      @defender = @player2
    end
   lose?
  end

  def p1_attack_p2
    @player2.lose_health
  end

  def p2_attack_p1
    @player1.lose_health
  end

  def lose?
    @lost = true if @current_turn.hp <= 0
  end
end
