require "pry"
class Song

  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count +=1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    # must return an array of genres of all of the existing songs.   this array should only contain unique genres
    @@genres.uniq
  end


  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = 0
    genre_total = {}
    self.genres.each do|unique_genre|
      genre_count = @@genres.count(unique_genre)
      genre_total[unique_genre] = genre_count
    end
    genre_total
  end
  def self.artist_count
    artist_count = 0
    artist_total = {}
    self.artists.each do|artist|
      artist_count = @@artists.count(artist)
      artist_total[artist] = artist_count
    end
    artist_total
  end
end
