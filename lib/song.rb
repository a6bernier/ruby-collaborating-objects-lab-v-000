

class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    
  end

  def artist=(artist) #allows both objects to know about relationship
    @artist = artist
    artist.add_song(self)
  end



end #ends class Song
