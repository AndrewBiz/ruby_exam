#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Вырезаем середину из массива"
      init_input( :a, ['что-то лишнее в начале', 1, 2, 3, 4, 5, 6, 7, 'что-то лишнее в конце'], args[0])
      @description = "вырезать из массива лишние элементы одной командой"
      #решение
      @output_teacher << @a.slice(1..-2)
    end
  end
end
