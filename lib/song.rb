  # Define your Song class
class Song
    @@count = 0

  def self.count
    @@count
  end
    # returns an array of all of the genres of existing songs.
    # array should contain only unique genres
  @@genres = []

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
      @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
      #When running inject on a Hash, the hash is first converted to an array
    end

   def self.genre_count
     genre_count = {}
     @@genres.each do |genre|
       if genre_count[genre]
         genre_count[genre] +=  1
       else
         genre_count[genre] = 1
       end
     end
     genre_count
   end

  @@artists = []



    def self.artists
      @@artists.uniq
    end

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @@artists << artist
      @genre = genre
      @@genres << genre
      @@count += 1
    end
    attr_accessor :name, :artist, :genre
  end
