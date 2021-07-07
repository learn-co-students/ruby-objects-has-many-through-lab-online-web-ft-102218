class Genre
@@all = []

attr_accessor :name, :genres, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

  def songs
    Song.all.select do |song|
    song.genre == self
    end
  end

end
