#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Размер хэша"
      init_input( :a, {key1: 1, key2: 2, key3: 3}, args[0])
      init_input( :b, {key4: "4", key5: "5", key6: "6", key7: "7"}, args[1])
      init_input( :c, {key8: 8, key9: 9, key10: 10}, args[1])
      @description = "вычислить совокупный размер (кол-во пар элементов) a, b, c"
      #решение
      @output_teacher << @a.size + @b.size + @c.size
    end
  end
end
