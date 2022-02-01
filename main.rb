def question(player)
  num1 = rand(1...20)
  num2 = rand(1...20)
  puts "#{player}: What does #{num1} + #{num2} equal?"
  answer = num1+num2

end

player1_life = 3
player2_life = 3
turn = 6

while player1_life > 0 && player2_life > 0


   if turn%2 == 0
    gameanswer = question("Player 1")
    answer = gets.chomp.to_i
    if answer == gameanswer
      puts"YES you are correct"
    else
      puts"Seriously? No!"
      player1_life = player1_life - 1   
    end
    turn = turn - 1
  else
    gameanswer = question("Player 2")
    answer = gets.chomp.to_i
    if answer == gameanswer
      puts"YES you are correct"
    else
      puts"Seriously? No!"
      player2_life = player2_life - 1   
    end
    turn = turn - 1
  end

  if player1_life > 0 && player2_life > 0
  puts"P1: #{player1_life}/3 vs P2: #{player2_life}/3"
  puts "-----NEW TURN-----"
  end

end  

if player1_life > 0
  puts "Player 1 wins with a score of #{player1_life}/3"
else
  puts "Player 2 wins with a score of #{player2_life}/3"
end     

puts "-----GAME OVER-----"
puts "Good bye!"


