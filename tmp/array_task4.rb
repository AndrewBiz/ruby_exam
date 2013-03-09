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
    puts "ЗАДАЧА: поменять местами 0-й элемент массаива а и 4-й элемент массива b"
    puts "поместить два новых массива в result"
    #решение
    @result = []
    @result << @a
    @result << @b
    buf = @a[0]
    @result[0][0] = @b[4]
    @result[1][4] = buf
  end
end
