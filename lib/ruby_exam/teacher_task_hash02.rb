#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Хэш в хэше"
      init_input( :a, {key1: 1, key2: 2, key3: 3}, args[0])
      init_input( :b, {key4: "4", key5: "5", key6: "6", key7: "7"}, args[1])
      init_input( :c, {key8: 8, key9: 9, key10: 10}, args[1])
      @description = "поместить хэши a,b,c в новый хэш с ключами - :a, :b, :c"
      #решение
      c = {}
      c[:a] = @a
      c[:b] = @b
      c[:c] = @c
      @output_teacher << c
    end
  end
end
