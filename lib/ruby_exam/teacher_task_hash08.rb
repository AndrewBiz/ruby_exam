#!/usr/bin/env ruby -w

require_relative "task.rb"

module RubyExam
  class Task
    private
    def prepare( *args )
      @name = "Обработка каждого элемента хэша"
      init_input( :a, {key1: 1, key2: 2, key3: 3, key4: 4}, args[0])
      @description = "получить строку с перечислением всех элементов хэша в виде: 'Ключу key1 соответствует значение 1. Ключу ...' и так далее"
      #решение
      str = ""
      @a.each do |k,v|
        str += "Ключу #{k} соответствует значение #{v}. "
      end
      @output_teacher << str.strip
    end
  end
end
