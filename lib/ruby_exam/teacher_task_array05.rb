#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Элементы массивов меняются местами"
      init_input( :a, [1, 2, 3, 4, 5], args[0])
      init_input( :b, [6, 7, 8, 9, 0], args[1])
      @description = "поменять местами 1-й элемент массива a и 3-й элемент массива b. Поместить массивы a и b в новый массив."
      #решение
      result = []
      result << @a.dup
      result << @b.dup
      result[0][1] = @b[3]
      result[1][3] = @a[1]
      @output_teacher << result
    end
  end
end
