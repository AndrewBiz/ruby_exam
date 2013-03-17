#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Удаляем элементы хэша по значению"
      init_input( :a, {key1: 1, key2: 22, key3: 3, key4: 4, key5: 22, key6: 6, key7:"22", key8: 22}, args[0])
      @description = "удалить из хэша все элементы, значение которых равно числу 22"
      #решение
      a = @a.dup
      a.delete_if do |key, val|
        val == 22
      end  
      @output_teacher << a
    end
  end
end
