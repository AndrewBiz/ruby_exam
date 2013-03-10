#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Массив в массиве"
      init_input( :a, [1, 2, 3, 4, 5], args[0])
      init_input( :b, [6, 7, 8, 9, 0], args[1])
      @description = "поместить массив a и массив b в новый массив"
      #решение
      c = []
      c << @a
      c << @b
      @output_teacher << c
    end
  end
end
