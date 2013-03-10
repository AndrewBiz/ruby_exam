#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Удаляем элементы массива по значению"
      init_input( :a, [0, 1, 2, 22, 3, 4, 22, 5, 6, 22, 7], args[0])
      @description = "удалить из массива все элементы, равные 22"
      #решение
      a = @a.dup
      a.delete(22)
      @output_teacher << a
    end
  end
end
