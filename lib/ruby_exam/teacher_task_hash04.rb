#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Ключи отдельно, значения отдельно"
      init_input( :a, {key1: "значение 1", key2: "значение 2", key3: "значение 3"}, args[0])
      @description = "вернуть массив ключей и массив значений хэша a"
      #решение
      @output_teacher << @a.keys
      @output_teacher << @a.values
    end
  end
end
