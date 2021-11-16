puts "Enter the number of dice"
dice_number = gets.chomp

class Dice
    def roll
        rand(1..6)
    end
end