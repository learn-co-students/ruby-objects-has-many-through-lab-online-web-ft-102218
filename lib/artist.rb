require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs=(song)
    @songs << song
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs = song
  end

  def genres
    @songs.map { |song| song.genre }
  end

  def self.all
    @@all
  end
end
