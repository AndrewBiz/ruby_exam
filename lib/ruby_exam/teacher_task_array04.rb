#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Элементы массива меняются местами"
      init_input( :a, [1, 2, 3, 4, 5], args[0])
      @description = "поменять местами 0-й и 4-й элементы массива"
      #решение
      a = @a.dup
      a[0] = @a[4]
      a[4] = @a[0]
      @output_teacher << a
    end
  end
end
