class Turn
  def check_answer(player)
    puts player.name + "'s Turn"
    q = Question.new
    q.questions
    puts q.question
    user_answer = gets.chomp.to_i
    if user_answer === q.answer
      puts "Yes!"
    else
      player.lives -= 1
      if player.lives != 0
        puts "Incorrect. #{player.name} has #{player.lives} live(s) remaining."
      end
    end
  end  
end