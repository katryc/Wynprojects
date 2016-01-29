require'/Users/MARKIII/Wynprojects/votedata/Person_class.rb'

class Main
###main menu for the program
def initialize(voters_database, polititians_database)
@voters_database = []
@polititians_database = []
end

def self.menu
draw_line
    puts "Welcome to the Elections 2016!"
    ask_user "How would you like to participate?:\n " , "|c| create\n |l| list \n |u| update \n |d| delete\n |e|exit\n\n"

     case @choice
     when 'c'
       create
     when 'l'
       list

     when 'u'
       update

     when 'd'
       delete
     when 'e'
       exit

           else
             system 'clear'
             puts "Invalid choice. Please, choose again!"
             sleep(1.5)
             system 'clear'
             self.menu
           end
end



#######flow methods########################################
#create method === WORKS!!!!
def self.create
  ask_user "Would you like to create: \n ", "|v|Voter\n |p|Polititian\n"
  if @choice == 'p'
    polititian = Polititian.new(@name, @affiliation)
    polititian.create_entry
    polititian.confirm

@voters_database << Polititian.new(@name, @affiliation)
 ##the array gives NilClass(NoMethodError)

   else
     voter = Voter.new(@name, @affiliation)
     voter.create_entry
     voter.confirm
 @polititians_database << Voter.new(@name, @affiliation)
 ##the array gives NilClass(NoMethodError)

end
self.menu
end

#list method#######################################DOES NOT WORK!!!!
def self.list
ask_user "Would you like to list: \n ", "|v|Voter\n |p|Polititian\n"

if @choice == 'p'
puts "----Polititians' Database---"

@polititian_database.each do |i|
	puts "#{i.name}, #{i.affiliation}"
	##the array gives NilClass(NoMethodError)

end

 else
   puts "----Voters' Database---"

   @voters_database.each do |i|
   				puts "#{i.name}, #{i.affiliation}"
   				##the array gives NilClass(NoMethodError)

   			end
end
self.menu

end

def self.update
  ask_user "Would you like to update: \n ", "|v|Voter\n |p|Polititian\n"
self.menu
end

def self.delete
  ask_user "Would you like to delete: \n ", "|v|Voter\n |p|Polititian\n"
  self.menu
end
end
########################################additional methods
def ask_user(question, options)
  say question
  say "#{options}"
  @choice = gets.chomp.chr
end
###say-method
def say(statement)
  statement.center(20).each_char {|c| putc c ; sleep 0.03; $stdout.flush }
end

def draw_line
  puts "--------------------------------------------------------"
end
##############################################
#####call

Main.menu
