#In this lab, we'll be dealing with a Song class. The Song class can produce individual songs. Each song has a name, an artist and a genre. We need our Song class to be able to keep track of the number of songs that it creates.

class Song
 @@count = 0 
 @@genres = []
 @@artists = []

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def initialize name, artist, genre
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
# it looks like #uniq method can be used in this case 
# Note to myself : check this 
# https://www.rubyguides.com/2019/08/ruby-uniq-method/
def self.genres
     @@genres.uniq
   end

   def self.artists
     @@artists.uniq
   end
   
   ######## study this part of the code 
   def self.genre_count
     num_of_genres = {}
     @@genres.each do |each_genre|
       if num_of_genres[each_genre]
          num_of_genres[each_genre] += 1 
        else
          num_of_genres[each_genre] = 1
       end
     end
     num_of_genres
   end

   def self.artist_count
     num_of_artists = {}
     @@artists.each do |each_artist|
       if num_of_artists[each_artist]
         num_of_artists[each_artist] += 1
       else
         num_of_artists[each_artist] = 1
       end
     end
     num_of_artists
   end
# Study this part of the code 
 
end 