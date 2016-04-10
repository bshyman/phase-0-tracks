# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(number)
#     number.times do
#       puts "AHHH HAPPY AHHH!!!!"
#     end
#   end

# end

# p Shout.yell_angrily("argghhh")
# Shout.yell_happily(5)

module Shout
  def yell_repeatedly(words)
    words.length.times do
      puts "#{words}"
    end
  end
end

class Parent
  include Shout
end

class Teacher
  include Shout
end
parent = Parent.new
parent.yell_repeatedly("YOU LITTLE...!!!")
teacher = Teacher.new
teacher.yell_repeatedly("Quiet Please!")