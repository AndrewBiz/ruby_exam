#!/usr/bin/env ruby -w

require_relative "task.rb"
require 'date'

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Добавляем элемент в начало массива"
      init_input( :a, [0, 1, 2, 3, 4, 5, 6, 7], args[0])
      @description = "добавить в начало массива сегодняшние год, месяц, день"
      #решение
      a = @a.dup
      today = Time.now
      a.unshift(today.year)
      a.unshift(today.mon)
      a.unshift(today.day)
      @output_teacher << a
    end
  end
end
