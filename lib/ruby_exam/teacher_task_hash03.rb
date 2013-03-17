#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Элементы хэша меняются местами"
      init_input( :a, {key1: 1, key2: 2, key3: 3}, args[0])
      init_input( :b, {key4: "4", key5: "5", key6: "6", key7: "7"}, args[1])
      @description = "поменять местами значения ключей key2 и key6"
      #решение
      a = @a.dup
      b = @b.dup
      save = a[:key2]
      a[:key2] = b[:key6]
      b[:key6] = save
      @output_teacher << a
      @output_teacher << b

    end
  end
end
