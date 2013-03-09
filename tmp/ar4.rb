#!/usr/bin/env ruby -w -U
# encoding: UTF-8

require_relative "/home/anb/dev/lib/array_task4.rb"

task = ArrayTask.new

# тут надо сделать обработку
result = [
  d = task.a[0],
  f = task.b[4],
  (task.a)-d,
  (task.b)-f
  l = f + (task.a)
  o = (task.b) + d]
# печать результата
task.solution( result )
