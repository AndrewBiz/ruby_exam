#!/usr/bin/env ruby -w 
# needs ruby 2.0
# (с) ANB Andrew Bizyaev Андрей Бизяев 

#require_relative "/home/anb/dev/ruby_exam/lib/ruby_exam/teacher_#{File.basename(__FILE__)}"
require_relative "../lib/ruby_exam/teacher_#{File.basename(__FILE__)}"

task = RubyExam::Task.new

task.describe

# тут надо сделать обработку
# task.a, task.b
result = [[1,2,3,4,5], [6,7,8,9,0]]

# печать результата
task.solve result
