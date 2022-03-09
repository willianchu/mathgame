class Question
  def ask_question(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{player} : What is #{num1} plus #{num2}?"
    answer = gets.chomp.to_i
    answer == num1 + num2 ? true : false
  end
end