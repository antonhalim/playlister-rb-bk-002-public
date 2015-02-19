require 'pry'
class Artist
  attr_accessor :name, :songs
  attr_reader :song
  @@artist = []

  def initialize
    @name = name
    @songs = []
    @genres = []
    @@artist << self
  end

  def add_song song
    @songs << song
    @song = song
    song.genre.artists << self if song.genre # genre is object
  end

  def genres
    @genres << @song.genre
  end

  def self.reset_artists

  end

  def self.all
    @@artist
  end

  def self.count
    @@artist.length
  end

  def self.reset_artists
    @@artist = []
  end
end
