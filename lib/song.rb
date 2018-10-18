require "pry"

class Song

  attr_accessor :genre, :name
  attr_reader :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = artist_name
    song.genre = genre_name
    song.save
  end

  def artist=(name)
    binding.pry
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end #ends class Song
