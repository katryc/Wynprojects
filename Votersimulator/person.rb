class Voter
attr_accessor :name, :affiliation
  def initialize(name, affiliation)
    @name = name
    @affiliation = affiliation
end
def create_voter
  puts "Type full name with a space: \n"
  puts " "
  @name = gets.chomp.to_s.upcase.strip
  decor

  puts "What are your political views:\n |Liberal|\n |Radical|\n |Socialist|\n |Neutral|\n "
  @affiliation = gets.chomp.to_s.downcase.capitalize.strip
  decor
end
def confirm
  puts "You've created: "
  puts "Person's Name: |#{@name} | Person's affiliation: |#{@affiliation} |"
  puts "Confirm:   |y|yes|  or  |n|no| "
  answer = gets.chomp.chr
   if answer == 'y'

      system 'clear'
     decor
      puts"Your entry has been added to the Voters' Database"

      sleep(2)
   else
      exit
   end
end
def decor
  puts " \n"
  puts "-------------------------------------\n "
end
def update_voter
end

def delete_voter
end

end



class Polititian < Voter
  attr_accessor :name, :affiliation
def initialize(name, affiliation)
    super(name, affiliation)
 end

end