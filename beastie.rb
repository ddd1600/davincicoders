require 'highline/import'

class Discography

def initialize
  @beastie = {
  "1986" => "Licensed to Ill", "1989" => "Paul", "1992" => "Check Your Head",
  "1993" => "Ill Communication", "1998" => "Hello Nasty",
  "2004" => "To the 5 Boroughs", "2007" => "The Mix-Up",
  "2011" => "Hot Sauce Committee Part Two", "1994" => "Some Old Bullshit",
  "1996" => "The In Sound From Way Out!",
  "1999" => "Beastie Boys Anthology: The Sounds of Science",
  "2005" => "Solid Gold Hits"
}
end

def sortAndIndex
  #sorting keys
  @beastie = Hash[@beastie.sort]

  #basic setup for both input types
  @years = @beastie.keys
  @albums = @beastie.values
  @sum = @years.count
end

def ask
  $stdout.write("Vat do you vant? ")
  @input = $stdin.gets.chomp
end

def mainProgram
  
  if @beastie[@input] != nil
    @album = @beastie[@input]
    @year = @beastie.key(@album) # this is the long way of doing this, I could've
                               # just used @input, but I didn't realize that
                               # at the time
    both = "#{@album}, #{@year}"
    puts both
elsif @input=="albums" or @input=="all"
  @i = 0
  puts ""
  @sum.times do
       thatyear = @years[@i] + ", " + @albums[@i]
       puts thatyear
       puts ""
       @i += 1
       end
  else
  puts "Invalid parameters, try '1986'"
end


#preparing to "skip" to the next hash item, I do this by
#using the key array (years) used above, later I'll use the key (string)
#to "summon" it's corresponding value back in the hash

year_index = @years.find_index(@input)
loop do
  break if @continue=="albums"
  $stdout.write("Type 'n' to see the next album, else hit enter\n")
  continue = $stdin.gets.chomp
  puts ""
  break if continue != "n"
  year_index = year_index
  next_year_index = year_index += 1
  next_year = @years[next_year_index]
  puts "#{@beastie[next_year]}, #{next_year}"
  puts ""
end

end

end


d = Discography.new
d.sortAndIndex
d.ask
d.mainProgram
