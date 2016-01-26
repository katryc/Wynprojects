#game flow
def game_menu
clear_screen
menu
draw_line
menu_choice_conditions
end

#Quest 1 Thebes
def thebes
  thebes_intro
  riddle
end

def troy
troy_graphics
troy_intro
pick_side

end

def hades
  hades_graphics
  hades_intro
  help_Heracles

  end












#intros

def thebes_intro
  clear_screen
  draw_shovel_line
  say "So, #{$name}, you found yourself \u{1F628}  standing in front of a beautiful and terrifying figure:".center(30)
  say " a huge winged lion with a face of a woman. The sphinx of Thebes opens her enourmouse mouth and pronounces a riddle:\n
   \u{1F479} 'Tell me #{$name}, what is it that has one voice and yet becomes four-footed and two-footed and three-footed?'\n\n"
  puts "\u{1F449}\n"
end

def troy_intro
  say "Good day to you #{$name}!\n"
  sleep(1)
  say "Your noble Quest has taken you into the middle "
  say "of a long-long-lasting battle between the mighty Trojans and brave Greeks. "
  sleep(1)
  say "\n Finally, either of them will have a chance to win thanks to you!"
  sleep(0.5)
end

def greeks_intro
  clear_screen
  draw_shovel_line
  puts "You decided to joing the Greeks, wise #{$name}"
  puts "Now all you have to do is find your way inside the city."
  puts "How are you going to do this..?\n"
  puts "\u{1F449}"

end

def hades_intro

  say "\n\u{1F525} You are going with Heracles to Hades for Cerberus \u{1F415}.\n "
  sleep(1)
  say "You will be allowed to take Cerberus \u{1F415} only if you mastered him without the use of the weapons "
  say "so, you need to advise your mascular but not-so-bright companion what to do.\n"
  puts "\nHurry up: Cerberus \u{1F415} is already drooling, excited to have a taste of your buttocs!  \u{1F525} \n"
empty_line
  sleep(6)

end

#mini-quests
def riddle

  riddle_answer = gets.chomp.downcase.strip
  case riddle_answer
  when  riddle_answer.include?("man")
    wait_clock
    sleep(2)
    draw_line
    puts "\nThe Sphinx is devastated by your wisdom and kills herself.
         You are free to continue your adventure!\n\n"
         sleep(1)


      draw_shovel_line
      move_on
      continue_quest


    else
      devoures
      wait_clock
sleep(3)
      draw_shovel_line
      paper_scissors_rock
      continue_quest
end
end

#troy_mini_quest
def pick_side
  ask_user "\n Pick a side:" , "  |Trojans| or |Greeks| \n\n"
  puts "\u{1F449}"
  $side = gets.chomp.capitalize
  empty_line
  if $side.include?('t')
    trojans
  else
    greeks
  # case
  #      when $side =='t'
  #        trojans
  #
  #      when $side=='g'
  #             greeks
            end
          end



#mini-game to  get out of Sphinx
def paper_scissors_rock
  clear_screen
  draw_shovel_line
	puts "\n  Play with the Sphinx's stomach to get out!\n"
  sleep(1)
	result = rand(3).floor
	ask_user "\n   What have you got?:" , " \n\n 1| for paper   \u{1F4C3}\n 2| for scissors  \u{2702}\n 3| for rock  \u{270A}\n\n"
	sleep(0.5)
  puts " \u{1F449}"
  choice = gets.chomp.to_i

	if choice == result
		say "\nIt's a tie!\n"
    sleep(1.5)
		paper_scissors_rock
	elsif choice < result
		say "\nSorry, you lost\n Try again!"
    sleep(1.5)
		paper_scissors_rock
	elsif choice > result
		puts "\n  You won! Get out!!!!\n"
    sleep(1.5)
    draw_shovel_line
    sleep(1.5)

	end
end
#mini-game in greeks
def greeks
  clear_screen
  greeks_intro
  trojan_horse = gets.chomp.to_s.downcase
  wait_clock
  until trojan_horse.include?("horse")
    puts"..."
    sleep(0.5)
    puts ["Think again.." , "Think harder!", "Not exactly.."].sample
    puts "\u{1F449}"
    trojan_horse = gets.chomp.to_s.downcase
  end
    if trojan_horse.include?("horse")
    puts"....\r"
    sleep(1)
    puts"  ..."
    wait_clock
    puts"Great idea!\n"
    sleep(1)
    puts"The Trojans are bringing the horse into the city.\n"
    sleep(1)
    puts"You and your fellow sweaty Greeks are jumping out and slaughtering the stunned Trojans...\n"
    sleep(1)
    puts "\u{1F4A5}"
    sleep(1)
    draw_shovel_line
    trojan_war_winner
end
end
#mini-game in trojans
def trojans

 clear_screen
 draw_shovel_line
 empty_line
 say "You have joined the Trojans!\n"
 say "The Gods are coming to you and revealing a secret: \n"
 sleep(1)
 puts "  \u{1F607} :" " 'You can defeat the pesky Greeks by sneaking into their camp and
 poking Achilles in his heel'\n"
 draw_shovel_line
 sleep(1)
 ask_user "Do you think you are up to the task?" , " |Yes| or |No|?\n"
 puts "\u{1F449}"
 answer = gets.chomp.chr
    if answer == 'y'
      achilles_graphics
      trojan_war_winner

else
      say "Never mind. You can still join the Greeks' instead!\n"
      sleep(0.5)
      puts "|Yes| or |No|?\n"
      puts "\u{1F449}"
      decision = gets.chomp.chr
      if decision =='y'
        sleep(1)
        greeks
      else
      end_game
    end
  end
end
 #mini-game hades
 def help_Heracles

   draw_shovel_line
   sleep(1)
   puts "What should Heracles use to tame the fierce beast?\n\n"
   sleep(1)
   puts " 1| sword      \u{1F52A} \n 2| lion's skin \u{1F431} \n 3| syringe     \u{1F489} "
   empty_line
   puts "\u{1F449}"
   @help= gets.chomp.to_i
   until @help==2
     puts "\u{23F3}"
     sleep(1)
     puts ["Try again..\n" , "Not exactly.." , "Warm.."].sample
     puts "\u{1F449}"
     @help= gets.chomp.to_i
     end
     if @help==2
       wait_clock
       say " ...  ...  ..."
       clear_screen
       draw_line
       empty_line
       puts"Your advice is really useful!"
       sleep(2)
       puts"Heracles wraps the lion's skin around his arm as a shield."
       sleep(2)
       puts "Cerberus \u{1F415} submitts, unable to bite his opponent."
       sleep(2)
       puts">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
       puts"              !!!     YOU WON    !!!                      "
       puts">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
       puts"                                                          "
       sleep(3)

       continue_quest
 end
 end




#special methods
#get the user's name
def name
  until $name.is_a? String do
puts "                ______________________________"
puts "                What is your name, brave Hero?"
puts "                ______________________________"
puts "\u{1F449}"
$name = gets.chomp.upcase
end
end

def ask_user(question, options)
  say question
  say "#{options}"
  # gets.chomp.downcase.strip
end
#deciding the game flow menu
#major loop for the whole game
def menu_choice_conditions

   choice=0
  until ((choice>=1)&&(choice<=4)) do
  # puts `afplay AMemoryAway.mp3\n`
    empty_line

    say ("Chose your Quest: \n")
    sleep(0.5)
    puts "\u{1F449}"
    choice = gets.chomp.to_i
  end
  if (choice==1)
  name unless $name==","
  # thebes
  thebes
  end

  if (choice==2)
  name unless $name==","
   troy
  p "troy"
  end

  if (choice==3)
  name unless $name==","
   hades
  p "hades"
  end

  if (choice==4)
  end_game
  end

end

def trojan_war_winner

  clear_screen
  empty_line
  draw_shovel_line
  empty_line
puts "\u{1F4A5}\n"
puts " \u{1F4A5}\n  \u{1F4A5}\n"

say "You have won the Trojan War!\n".center(50)
empty_line
draw_shovel_line
empty_line
say "Are you ready for yor next adventure?\n"
puts "\u{1F449}"
      a = gets.chomp.chr
         unless a == 'n'
           sleep(0.7)
           continue_quest
         end
       end

def continue_quest


 clear_screen
 empty_line
 ask_user  "  Where would you like to go: \n\n",  " a|Thebes|\n  b|Troy|\n  c|Hades|\n  d|I'm tired! Take me home!\n\n"
 puts " \u{1F449}"
 $continue = gets.chomp.chr
 case $continue
 when 'a'
   thebes
 when 'b'
   troy
 when 'c'
   hades
 when 'd'
   congrats

else
end_game
end
end


#special effects
##effect for screen
def clear_screen
  puts `clear`
end
##effect for typing
def say(statement)
  statement.center(35).each_char {|c| putc c ; sleep 0.03; $stdout.flush }
end

def wait_clock
  empty_line
  sleep(1)
  puts "\u{23F3}"

  sleep(1)
  puts "\u{23F3}"
  end

#draw an empty line
def empty_line
  puts" " * 70
end
def draw_line
  puts"-" * 70
end
def draw_star_line
  puts"*" * 70
end
def draw_shovel_line
  puts">" * 70
end

#end of special effects

#graphics methods
def menu
    draw_line
    puts   "   _______________________________________________________ "
    puts   "  |                                                       |"
    puts   "  |                        ~~THE QUEST~~                  |"
    puts   "  |                                                       |"
    puts   "  |     >>>>>>>>>>>          1. Thebes                    |"
    puts   "  |   >>>        |           2. Troy                      |"
    puts   "  |     |  =     |           3. Hades                     |"
    puts   "  |     |      __|           4. GO HOME                   |"
    puts   "  |     |     -|                                          |"
    puts   "  |     |______|                                          |"
    puts   "  |                                                       |"
    puts   "  |_______________________________________________________|"
end

def move_on
  draw_line
  empty_line
  puts "                          +                      "
  puts "                        + + +                    "
  puts "                         +++                     "
  puts "                          *                      "
  empty_line
  draw_line
  end

  def good_luck
    empty_line
    say  "                 Good Luck in your next Quest!!\n                   ".center(70)
    empty_line
    draw_shovel_line
    sleep(1)

  end

  def devoures

    draw_line
    puts "                        **               "
    puts "                        ****  /          "
    puts "                          || /           "
    puts "                     0/   >>>>>>>>       "
    puts "                     |    |     |        "
    puts "                                         "
    draw_line
    sleep(1)
     say "Ooops!\n You are wrong! The Sphinx devoures you.\n
          Get ready to fight your way out!!!\n"

  end

  def troy_graphics

    clear_screen
    draw_shovel_line
    puts   "  |-------------------------------------------------------|"
    puts   "  |                                 *                     |"
    puts   "  |                                | |                    |"
    puts   "  |     >>>>>>>>>>>           _|-|_|-|_|-|_               |"
    puts   "  |   >>>        |           |       o/    |              |"
    puts   "  |     |  =     |           |    o  |   o/|              |"
    puts   "  |     |      __|           o||0 ^     | |/              |"
    puts   "  |==== |     -| ============|   | |-|-|   |============  |"
    puts   "  |     |______|                                          |"
    puts   "  |     |    |                                            |"
    puts   "  |_______________________________________________________|"
      draw_shovel_line
    sleep(1)
  end

  def achilles_graphics
    draw_shovel_line
    say "The Gods are pleased! They present you with a 3-foot long needle"
    sleep(1)
    puts "Go get them!" + "  \u{1F64C}"
    sleep(1.5)
    clear_screen
    draw_line
    empty_line
    puts"    @@                   |  |        "
    puts"    ||==_____________    |  |___=    "
    puts"   |  |                  |_____=     "
    empty_line
    draw_line
    sleep(1)
    say " Poking in progress... \n"
    sleep(1.5)
    puts "\u{1F463} ... Ouch! \n"
    sleep(1.5)
    puts "\u{1F463} ... Ouch! \n"
    sleep(1)
  end

  def hades_graphics
    clear_screen
    puts "              \u{1F525}    \u{1F525}    \u{1F525}    \u{1F525}    \u{1F525}"
    puts "                                                   "
    puts "        Abandon every hope, all you who enter     "
    puts "       ______________________________________     "
    puts "                                                   "
    puts "               <O O>  <0 0>  <O O>                 "
    puts "                 ||    |||    ||                   "
    puts "                  **************                   "
    puts "                   ***********                     "
    puts "                    **     **                      "
    puts "                  **         **                    "
    puts "                                                   "
    puts "              \u{1F525}    \u{1F525}    \u{1F525}    \u{1F525}    \u{1F525}"
    sleep(1)
  end



def end_game
  puts " ______________________________________________________________________ "
  puts "            \n Whatever man! No-one's forcing you to play\n             "
  puts "|______________________________________________________________________|"
  puts "|                                                                      |"
  puts "|                                               >>>>>>>>>>>>>          |"
  puts "|               -----                           |  |0-- |o--|          |"
  puts "|               | ''|                           |      _|   |          |"
  puts "|                |_|--)    - -- -------->       |   |---    |          |"
  puts "|   ___________ |   | _________                 ------------           |"
  puts "|                                                 |  |                 |"
  puts "|                                                  / /                 |"
  puts "|______________________________________________________________________|"
  empty_line

end
def congrats
    puts "              Congratulations #{$name}! You return home as a GREAT HERO!".center(70)
    sleep(1)
    draw_shovel_line
    sleep(1)
    puts "               \u{1F389}    \u{1F389}    \u{1F389}    \u{1F389}     \u{1F389}     \u{1F389}".center(60)
    puts"            |-------------------------------------------------------|"
    puts"            |                                                       |"
    puts"            |                                                       |"
    puts"            |                      >>>>>>>>>>>                      |"
    puts"            |                    >>>        |                       |"
    puts"            |                      |   8    |                       |"
    puts"            |                      |      __|                       |"
    puts"            |                      |     ()|                        |"
    puts"            |                      |_______|                        |"
    puts"            |                                                       |"
    puts"            |_______________________________________________________|"
    empty_line
    puts "                \u{1F389}    \u{1F389}    \u{1F389}    \u{1F389}     \u{1F389}     \u{1F389}".center(60)

end


#methods in the game
game_menu
