class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.map {|employee| employee.give_annual_raise}
  end

  def fire_all_employees
    @employees.map {|employee| employee.active=false}
  end
end


class Intern < Employee
  def send_report
    puts "sending email..."
    #use email sending library
    puts "Email sent!"
  end
end

intern=Intern.new(first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true)
intern.print_info
intern.send_report
