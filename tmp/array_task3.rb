#!/usr/bin/env ruby -w
# encoding: UTF-8

require_relative 'array_test.rb'

class ArrayTask < ArrayTest
  def description
    @a = [1, 2, 3, 4, 5] if @a.empty?
    @b = [6, 7, 8, 9, 10] if @b.empty?
    puts
    puts "ДАНО:"
    puts "   Массив a = #{@a}"
    puts "   Массив b = #{@b}"
    puts "ЗАДАЧА: поместить массив a и массив b в новый массив"
    #решение
    @result = []
    @result << @a
    @result << @b
  end
end
