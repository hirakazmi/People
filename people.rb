
class People

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end

  end


class Instructor < People

  def teach
    "Everything in Ruby is an Object"
  end

end

class Student < People

  def learn
    "I get it"
  end

end

chris = Instructor.new("Chris")
puts chris.greeting
puts chris.teach

cristina = Student.new("Cristina")
puts cristina.greeting
puts cristina.learn
cristina.teach #this wont work because the teach is only in the Instructor class.
