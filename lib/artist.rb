class Artist

@@all = []
attr_accessor :name, :genres, :artist, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def songs
   @songs.select do |song|
    song.artist == self
    end
  end

  def genres
      songs.collect do |song|
      song.genre
    end
  end
end
