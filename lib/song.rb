require 'pry'
class Song
attr_accessor :song, :name, :genre


  def initialize
  @artist = []
  @genre = []

  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

  def genre
    @genre
  end
end
