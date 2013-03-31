#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Удаляем и заменяем элементы хэша"
      init_input( :a, {key1: "значение 1", key2: "значение 2", key3: "значение 3", key333: "XXX", key_h:{ a: 1, b: 2, x: "XXX", c: 333, d: 4}}, args[0])
      @description = "удалить из хэша лишние элементы (:key333 и :x) и заменить значение элемента :c на 3"
      #решение
      a = Marshal.load( Marshal.dump(@a) )
      a.delete(:key333)
      a[:key_h].delete(:x)
      a[:key_h][:c] = 3
      @output_teacher << a
    end
  end
end
