
class Person
  # attr_accessor :first_name, :second_name, :type, :

  def initialize
    puts "Type the first name: "
    @first_name = gets.chomp.to_s.downcase.capitalize.strip
    puts "Type the second name: "
    @second_name = gets.chomp.to_s.downcase.capitalize.strip
    @full_name = @first_name +" "+ @second_name
    # puts "Chose your affiliation:  "
    # @affiliation = gets.chomp.downcase.capitalize
    # puts "Person's Name: |#{@full_name} | Person's affiliation: |#{@affiliation} |"
  end
  # def create_person
  #   @person_list = []
  #   @person_list << @full_name +"; "+ @affiliation
  #   p @person_list
  # end


end




# person = Person.new
# person.create_person
