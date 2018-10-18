# require "pry"
#
# class Song
#
#   attr_accessor :genre, :name
#   attr_reader :artist
#
#   def initialize(name)
#     @name = name
#     @artist = nil
#   end
#
#   @@all = []
#
#   def self.all
#     @@all
#   end
#
#   def save
#     @@all << self
#     self
#   end
#
#   def self.new_by_filename(filename)
#     artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
#     song = self.new(song_name)
#     song.artist = Artist.find_or_create_by_name(artist_name)
#     song.genre = genre_name
#     song.save
#   end
#
#   def artist=(artist)
#     @artist = artist
#     artist.add_song(self) unless artist.songs.include?(self)
#   end
#
# end #ends class Song

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

end
