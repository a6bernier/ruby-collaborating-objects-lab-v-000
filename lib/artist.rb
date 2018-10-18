class Artist

  attr_accessor :name, :songs


  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
     @songs << song
    # unless @songs.include?(song)
      # song.artist = self
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)

    artist = @@all.detect do |artist|
      artist.name = artist_name
    end

    if(artist)
      artist
    else
      // create artist here
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end #ends class
