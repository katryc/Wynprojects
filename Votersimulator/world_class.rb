
require'/Users/MARKIII/Wynprojects/Votersimulator/person_class.rb'
require'/Users/MARKIII/Wynprojects/Votersimulator/polititian.rb'
require'/Users/MARKIII/Wynprojects/Votersimulator/voter.rb'

class World
###main menu for the program
def self.menu
    puts "Welcome to the Elections 2016!"
    ask_user "How would you like to participate?:\n " , "|c| create\n |l| list \n |u| update \n |d| delete\n"

     case @choice
     when 'c'
       create
     when 'l'
       list

     when 'u'
       update

     when 'd'
       delete

           else
             system 'clear'
             raise "Invalid choice"
           end
end
end


#######flow methods########################################
#create method === WORKS!!!!
def create
  ask_user "Would you like to create: \n ", "|v|Voter\n |p|Polititian\n"
  if @choice == 'p'
    polititian = Voter.new
    polititian.create_polititian
    polititian.confirm

     system 'clear'
     World.menu
  else

    voter = Voter.new
    voter.create_voter
    voter.confirm
    system 'clear'
    World.menu
  end
end

#list method#######################################DOES NOT WORK!!!!
def list
ask_user "Would you like to list: \n ", "|v|Voter\n |p|Polititian\n"
if @choice == 'p'

  polititian = Polititian.new
  polititian.list_polititians
  system 'clear'
  World.menu
else

   x = Voter.new
   Voter.list_voters
   system 'clear'
  World.menu
end
end

#update method##################################
# def update
#   ask_user "Would you like to update: \n ", "|v|Voter\n |p|Polititian\n"
#   if @choice == 'p'
#    polititian = Polititian.new
#    polititian.update_polititian
#   else
#     voter = Voter.new
#     voter.update_voter
#   end
# end

#delete##########################################
# def delete
# ask_user "Would you like to delete: \n ", "|v|Voter\n |p|Polititian\n"
# if @choice == 'p'
#   polititian = Polititian.new
#   polititian.delete_polititian
# else
#   voter = Voter.new
#   voter.delete_voter
# end
#
# end





###additional methods
def ask_user(question, options)
  say question
  say "#{options}"
  @choice = gets.chomp.chr
end
###say-method
def say(statement)
  statement.center(20).each_char {|c| putc c ; sleep 0.03; $stdout.flush }
end

###catch exeption
# begin
#   input == "#{@options}"
# rescue
#   puts "What would u like to do?"
# end


World.menu


#
