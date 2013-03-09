#!/usr/bin/env ruby -w -U
# encoding: UTF-8

require_relative "/home/anb/dev/lib/array_task2.rb"

task = ArrayTask.new

# тут надо сделать обработку
result = (task.a+task.b).size

# печать результата
task.solution( result )
