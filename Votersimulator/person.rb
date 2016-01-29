class Voter
attr_accessor :name, :affiliation
  def initialize(name, affiliation)
    @name = name
    @affiliation = affiliation
end
def create_entry
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
      puts"Your entry has been added to the Database"
    
      @voters_database = []
      @voters_database << "#{@name}" + ":"+ "#{@affiliation}"
      sleep(2)
   else
     system 'clear'
     decor
      puts "Please, type |Y|or |N|"
      decor
      confirm
   end
end
def decor
  puts " \n"
  puts "-------------------------------------\n "
end


end



class Polititian < Voter
  attr_accessor :name, :affiliation
def initialize(name, affiliation)
    super(name, affiliation)
 end

end
