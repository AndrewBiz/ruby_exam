#!/usr/bin/env ruby -w -U
# needs ruby 2.0
# (с) ANB Andrew Bizyaev Андрей Бизяев 

module RubyExam 
  VERSION = "0.1.0"
  if RUBY_VERSION < "2.0.0"
    puts "ruby version 2.0 and greater needed!"
    exit(1)
  end  
end
