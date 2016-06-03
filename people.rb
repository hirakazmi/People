


class People

  def intitialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end

end

class Instructor < People

  def teach < people
    "Everything in Ruby is an Object"
  end

end

class Student < People

  def learn
    "I get it"
  end

end

chris = People.new("Chris")
puts chris.greeting
