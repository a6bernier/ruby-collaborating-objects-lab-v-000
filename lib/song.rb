

class Song

  attr_accessor :name, :artist, :genre


  def initialize(name)
    @name = name
    @artist = nil
  end

  @@all = []

  def self.all
    @@all
  end




  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp.split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    song.save
  end

  def artist=(artist) #allows both objects to know about relationship
    @artist = artist
    artist.add_song(self)
  end



end #ends class Song
