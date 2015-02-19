require 'pry'
class Genre

  attr_accessor :name, :songs
  @@genres = []
  def initialize
    @name = name
    @songs = []
    @artists = []
    @@genres << self
  end

  def artists=(artists)
    @artists = artists
  end

  def artists
    @artists.uniq!
    @artists
  end

  def self.count
    @@genres.length
  end

  def self.all
    @@genres
  end

  def self.reset_genres
    @@genres = []
  end

end
