class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def tagline
    "#{@name} - #{@artist}"
  end
end

song1 = Song.new("Okie From Muskogee", "Merle", 5)
song2 = Song.new("Ramblin' Man", "Hank", 7)
song3 = Song.new("Good Hearted Woman", "Waylon", 6)

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each { |s| yield s }
  end

  def play_songs
    each { |song| song.play }
  end

  def each_tagline
    each { |song| yield song.tagline }
  end

  def each_by_artist(artist)
    selected_songs = select { |s| s.artist == artist }
    selected_songs.each { |s| yield s }
  end
end

playlist = Playlist.new("Mike's favorites")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

playlist.play_songs

okie_songs = playlist.select { |song| song.name =~ /Okie/ }
p okie_songs
puts ""

playlist.each_tagline { |tagline| puts tagline }
puts ""

playlist.each_by_artist('Hank') { |song| song.play }
puts ""

playlist.each_by_artist('Waylon') { |song| song.play }
puts ""
