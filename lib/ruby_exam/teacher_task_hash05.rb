#!/usr/bin/env ruby -w

require_relative "task.rb"
require 'date'

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Добавляем элемент в хэш"
      init_input( :a, {key1: "значение 1", key2: "значение 2", key3: "значение 3"}, args[0])
      @description = "добавить в хэш a элемент с ключём key100: и значением равным хэшу a"
      #решение
      a = @a.dup
      a[:key100] = a.dup
      @output_teacher << a
    end
  end
end
