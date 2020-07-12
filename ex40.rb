class Song

  def initialize(lyrics, title, artist)
    @lyrics = lyrics
    @title = title
    @artist = artist
  end

  attr_reader :title
  attr_reader :artist

  def sing()
    @lyrics.each { |line| puts line }
  end
end

at_the_zoo = Song.new(["Zebras are reactionaries", "Antelopes are missionaries", "Pigeons plot in secrecy"], "At the Zoo", "Simon & Garfunkel")

puts at_the_zoo.title
puts at_the_zoo.artist

at_the_zoo.sing()
