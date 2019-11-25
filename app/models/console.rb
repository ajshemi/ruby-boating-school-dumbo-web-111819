require 'pry'
require_relative './boatingtest.rb'
require_relative './student.rb'
require_relative './instructor.rb'


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
charles= Student.new("Charles")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
hines= Instructor.new("Mr.Hines")



 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
crashing_failure = charles.add_boating_test("crashing 101", "failed", hines)
binding.pry

p patrick.grade_percentage
p "*"*50
p puff.pass_student(patrick, "Power Steering what")
p "*"*50
p Instructor.all
p "*"*50
p Student.all
p "*"*50
p BoatingTest.all
p "*"*50
p Student.find_student("Patrick")
