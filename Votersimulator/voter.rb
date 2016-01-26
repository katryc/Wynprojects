
require'/Users/MARKIII/Wynprojects/Votersimulator/person_class.rb'
class Voter
  attr_accessor :first_name, :second_name, :full_name, :affiliation, :voter_database
# def initialize
# end
@voter_database = ["Kat Markava: Socialist","Frank Rycak: Fascist"]
@voter_database << Voter.new.create_voter
###############################create_voter
  def create_voter
    @voter_database = ["Kat Markava: Socialist","Frank Rycak: Fascist"]
    puts "Type first name: "
    @first_name = gets.chomp.to_s.downcase.capitalize.strip
    puts "Type second name: "
    @second_name = gets.chomp.to_s.downcase.capitalize.strip
    @full_name = @first_name +" "+ @second_name
      puts "What are your political views:\n |Liberal|\n |Republican|\n |Socialist|\n |Neutral|\n "
    @affiliation = gets.chomp.downcase.capitalize
    @voter_database << @full_name +": "+ @affiliation

    # p @voter_database
end

###############################confirm_voters
  def confirm
    puts "You've created: "
    puts "Voter's Name: |#{@full_name} | Voter's affiliation: |#{@affiliation} |"
    puts "Confirm:   |y|yes|  or  |n|no| "
    answer = gets.chomp.chr
     if answer == 'y'

        system 'clear'
        puts"Your entry has been added to the Voters' Database"
        p @voter_database
        sleep(2)
     else
        exit
     end
  end

################################list_voters
 def self.list_voters
   system 'clear'
   puts "---------This is the list of Voters---------\n\n"
   @voter_database.each_with_index do |index, n|
   puts "#{index}: #{n}"
   sleep(1)
  end
  sleep(2)
end
###########################################
def update_voter
  system 'clear'
  puts "Type the full name name of the Voter you would like to update: "
  @input = gets.chomp.to_s.downcase.capitalize
  p @voter_database
  if [@voter_database].include?(@input) == true
    #  [@voter_database].gsub(@input2)
    #  @input_update = gets.chomp.to_s
  else
    puts "'#{@input} Not Found"

  end
end
###############################delete_voters
def delete_voter
  puts "Type the full name name of the Voter you would like to delete: "
  @input = gets.chomp.to_s.downcase.capitalize
  if [@voter_database].include?(@input)
     [@voter_database].reject! {|x| x == @input }
  else
    puts "#{@input} Not Found"
  end
  end
end
# # # execution tests
# voter = Voter.new
# voter.create_voter
# voter.confirm
# voter.list_voters
# voter.update_voter
# voter.delete_voter
