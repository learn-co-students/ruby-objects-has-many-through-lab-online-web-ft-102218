require 'pry'

class Genre
  attr_accessor :name
  #attr_writer :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs=(song)
    @songs << song
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    @songs.collect { |song| song.genre == self ? song.artist : '' }
    #binding.pry
  end

  def self.all
    @@all
  end

end
