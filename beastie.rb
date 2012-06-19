require 'highline/import'

class Discography
  
  def initialize
    @disco = {
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
    @disco = Hash[@disco.sort]

    #basic setup for both input types
    @years = @disco.keys
    @albums = @disco.values
    sum = @years.count
    
    #setup for "albums" input
    @allalbums = []
    i = 0
    sum.times do
      thatyear = @years[i] + ", " + @albums[i]
      @allalbums << thatyear
      i += 1
    end
    
    #creating the list for "missing"
    @lastyear = @disco.keys.last.to_i
    @firstyear = @disco.keys.first.to_i
    range = (@firstyear..@lastyear).to_a
    @missingyears = []
  
    range.each do |year|
      if @disco.include?(year.to_s)
        nil
      else
        @missingyears << year
      end     
    end
    
  end

  def ask
    $stdout.write("Vat do you vant? ")
    @input = $stdin.gets.chomp
  end

  def mainProgram
    if @input=="albums" or @input=="all"
      puts @allalbums
    elsif @input=="missing"
      puts @missingyears
    elsif @missingyears.include?(@input.to_i)
      puts "There were no albums released in #{@input}."
    elsif @input=="first"
      puts "#{@years.first}, #{@albums.first}"
    elsif @input=="last"
      puts "#{@years.last}, #{@albums.last}"
    elsif @input=="count"
      puts "#{@disco.count} albums"
    elsif @disco[@input] != nil
      @album = @disco[@input]
      both = "#{@album}, #{@input}"
      puts both
    else
      puts "Invalid parameters, try '1986'"
  end


#preparing to "skip" to the next hash item, I do this by
#using the key array (years) used above, later I'll use the key (string)
#to "summon" it's corresponding value back in the hash

  year_index = @years.find_index(@input)
    loop do
      break if @disco[@input]==nil or if @disco.is_a?String
        $stdout.write("Type 'n' to see the next album, else hit enter\n")
        continue = $stdin.gets.chomp
        puts ""
      break if continue != "n"
        year_index = year_index
        next_year_index = year_index += 1
        next_year = @years[next_year_index]
        puts "#{@disco[next_year]}, #{next_year}"
        puts ""
      end
    end
  end
end

d = Discography.new
d.sortAndIndex
d.ask
d.mainProgram