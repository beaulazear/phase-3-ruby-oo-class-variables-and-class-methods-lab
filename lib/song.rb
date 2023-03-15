class Song
    attr_reader :name, :genre, :artist

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
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

    def self.genre_count
        genre_hash = {}
        @@genres.each do |i|
            genre_hash[i] = @@genres.count(i)
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |i|
            artist_hash[i] = @@artists.count(i)
        end
        artist_hash
    end
end