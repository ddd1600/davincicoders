require 'highline/import'
require './rps.rb'

@x = ask("1 for human vs human, 2 for human vs pc, 3 for pc versus pc")

if @x==1
  RockPaperScissors.play
else
  puts "nil"
end

