
require'/Users/MARKIII/Wynprojects/Votersimulator/person_class.rb'

class Polititian
  attr_accessor :first_name, :second_name, :full_name, :party, :polititian_database
    puts "Type the first name: "
    @first_name = gets.chomp.to_s.downcase.capitalize.strip
    puts "Type the second name: "
    @second_name = gets.chomp.to_s.downcase.capitalize.strip
    @full_name = @first_name +" "+ @second_name
    puts "What party do you belong to:\n |Democrat| or |Republican|\n "
    @party = gets.chomp.downcase.capitalize
    @polititian_database = []
    @polititian_database << "#{@full_name} + " ; " + #{@party} "

end


def confirm
  puts "You've created: "
  puts "Polititian's Name: |#{@full_name} | Polititians's party: |#{@party} |"
  puts "Confirm:   |y|yes|  or  |n|no| "
  answer = gets.chomp.chr
   if answer == 'y'
      system 'clear'
      puts"Your entry has been added to the Polititian Database"
      sleep(2)
   else
      exit
   end
end



@polititian_database.each do |x|
  p x +=1
end
end
end
