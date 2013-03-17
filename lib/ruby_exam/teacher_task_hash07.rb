#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Сложение хэшей"
      init_input( :a, {key1: 1, key2: 2, key3: 3, key4: 4}, args[0])
      init_input( :b, {key4: "4", key5: "5", key6: "6", key7: "7"}, args[1])
      init_input( :c, {key7: 7, key8: 8, key9: 9, key10: 10}, args[1])
      @description = "получить новый хэш, состоящий из элементов хэшей a, b и c. Если при этом встречаются одинаковые ключи, то a главнее b, b главнее c"
      #решение
      @output_teacher << @c.merge(@b.merge(@a))
    end
  end
end
