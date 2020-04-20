require 'pry'
class Song
    # class vars
    @@count = 0
    @@artists = []
    @@genres = []

    # instance vars
    attr_reader :name, :artist, :genre

    def initialize(title, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre

        @name = title
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.artists
        unique_artists = []

        @@artists.each do |artist|
            unique_artists << artist if !unique_artists.include?(artist)
        end

        unique_artists
    end

    def self.genres
        unique_genres = []

        @@genres.each do |genre|
            unique_genres << genre if !unique_genres.include?(genre)
        end

        unique_genres
    end

    def self.genre_count
        genre_hash = {}

        self.genres.each do |genre|
            genre_hash[genre] = @@genres.count(genre)
        end

        genre_hash
    end

    def self.artist_count
        artist_hash = {}

        self.artists.each do |artist|
            artist_hash[artist] = @@artists.count(artist)
        end

        artist_hash
    end
end

#binding.pry