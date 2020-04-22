class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |a|
      artist_count[a] = 0 if !artist_count.has_key?(a)
      artist_count[a] += 1
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |g|
      genre_count[g] = 0 if !genre_count.has_key?(g)
      genre_count[g] += 1
    end
    genre_count
  end

end
