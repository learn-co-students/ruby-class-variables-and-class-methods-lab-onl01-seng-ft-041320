require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 #keep track of the number of new songs
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
     @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
    
    def self.artists 
      @@artists.uniq
    end
    def self.genre_count
     # @@genres ={genre}

      genre_count = {}
      @@genres.each do |genre|
        if genre_count[genre] != nil
         genre_count[genre] += 1
       else
         genre_count[genre] = 1
      end
    end
     genre_count
 end
  def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if artist_count[artist] != nil
         artist_count[artist] += 1
       else
         artist_count[artist] = 1
      end
    end
    artist_count
 end
    end    
    