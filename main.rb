require "./player"
require "./questions"
require "./turn"

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
current_player = p1

loop do
  if p1.lives === 0
    puts "Game over, Player 2 Wins with #{p2.lives} live(s) left."
    break
  end
  if p2.lives === 0
    puts "Game over, Player 1 Wins with #{p1.lives} live(s) left."
    break
  end
  t = Turn.new
  t.check_answer(current_player)
  if current_player.name === p1.name
    current_player = p2
  else
    current_player = p1
  end
end