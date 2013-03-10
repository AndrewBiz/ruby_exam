#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Размер массива"
      init_input( :a, [1, 2, 3, 4, 5], args[0])
      init_input( :b, [6, 7, 8, 9, 0], args[1])
      @description = "вычислить совокупный размер (кол-во элементов) массивов a и b"
      #решение
      @output_teacher << (@a + @b).size
    end
  end
end
