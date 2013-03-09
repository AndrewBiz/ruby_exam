#!/usr/bin/env ruby -w
# needs ruby 2.0
# (с) ANB Andrew Bizyaev Андрей Бизяев 

require_relative "version"

module RubyExam
  class Task
    attr_reader :output_teacher

    def initialize( *args )
      @input =[]
      @output_teacher = []
      @name = "UNDEFINED"
      @description = "NOTHING"
      prepare( *args )
    end

    def describe
      puts
      puts "*** ЭКЗАМЕН по языку RUBY ***"
      puts "Билет #{@name}"
      puts "ДАНО:"
      @input.each do |var|
        val = instance_variable_get "@#{var}"
        puts "   #{var.to_s} = #{val}"
      end  
      puts "ЗАДАЧА: #{@description}"
    end

    def solve( *args )
      puts "================"
      puts "ОТВЕТ ученика : #{args}"
      puts "ОТВЕТ учителя : #{@output_teacher}"
      if args == @output_teacher
        puts ":) УРА!!! Решение ученика верно"
      else
        puts ":( Решение ученика НЕВЕРНО!"
      end
    end

    private
    def create_method(name, &block)
      self.class.send(:define_method, name, &block)
    end

    def init_input( name, value_teacher, value_student = nil )
      value = value_student || value_teacher
      instance_variable_set "@#{name}", value
      @input << name

      # adding getter
      create_method( name ) do
        instance_variable_get "@#{name}"
      end

      # adding setter
      create_method( "#{name}=" ) do |val|
        instance_variable_set "@#{name}", val
      end
    end
  end
end
