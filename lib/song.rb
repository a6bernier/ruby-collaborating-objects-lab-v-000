

class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp.split(" - ")[0]
  end

  def artist=(artist) #allows both objects to know about relationship
    @artist = artist
    artist.add_song(self)
  end



end #ends class Song
