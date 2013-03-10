#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Удаляем элементы массива по номеру"
      init_input( :a, [0, 1, 2, 3, 4, 5, 6, 7], args[0])
      @description = "удалить из массива 1-й, 3-й и 5-й элементы"
      #решение
      a = @a.dup
      a.delete_at(1)
      a.delete_at(2)
      a.delete_at(3)
      @output_teacher << a
    end
  end
end
