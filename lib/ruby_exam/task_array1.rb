#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "№01 Сложение массивов"
      init_input( :a, [1, 2, 3, 4, 5], args[0])
      init_input( :b, [6, 7, 8, 9, 0], args[1])
      @description = "получить новый массив, состоящий из элементов массивов a и b"
      #решение
      @output_teacher << @a + @b
    end
  end
end
