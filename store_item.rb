dog1={:breed=> "pug", :color=> "black and white", :temperment=> "lazy"}
dog2={:breed=> "australian shepherd", :color=> "brown", :temperment=> "friendly"}
dog3={:breed=> "poodle", :color=> "white", :temperment=> "smug"}

puts "This #{dog1[:temperment]} #{dog1[:breed]} is #{dog1[:color]}"

dog1={:breed=> "pug", :color=> "black and white", :temperment=> "lazy"}
dog2={:breed=> "australian shepherd", :color=> "brown", :temperment=> "friendly"}
dog3={:breed=> "poodle", :color=> "white", :temperment=> "smug"}

class Dogs
  attr_reader :breed, :color, :temperment, :age
  attr_writer :color

  def initialize(input_options)
    @breed=input_options[:breed]
    @color=input_options[:color]
    @temperment=input_options[:temperment]
    @age=input_options[:age]
  end

  def print_info
    puts "This #{@temperment} #{@breed} is #{@color} and is #{@age} years old "
  end

  def annual_age_increase
    @age=@age.to_i+1
  end
end

dog1=Dogs.new breed: "pug", color: "brown", temperment: "happy", age: "4"
#dog1=Dogs.new("pug","black","lazy","4")

dog1.print_info
dog1.annual_age_increase
dog1.print_info
dog1.color="white"
dog1.print_info

puts dog1.breed
puts dog1.color
puts dog1.temperment
puts dog1.age
#meta programming: attr_reader :first_name, :last_name


class Manager < Dog
  def send_report
    puts "sending email..."
    #use email sending library
    puts "Email sent!"
  end
end