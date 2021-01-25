class Song

    @@count = 0

    def self.count
        @@count
    end

    @@genres = []

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.uniq.count
    end

    @@genre_count = {}

    def self.genre_count
        @@genres.each do |genre|
            count = 0 
            if !@@genre_count.has_key?(genre)
                count += 1
                @@genre_count[genre] = count
            else
                @@genre_count[genre] += 1
            end
        end
        @@genre_count
    end

    @@artists = []

    def self.artists
        @@artists.uniq
    end

    @@artists_count = {}
    
    def self.artist_count
        @@artists.each do |artist|
            count = 0 
            if !@@artists_count.has_key?(artist)
                count += 1
                @@artists_count[artist] = count
            else
                @@artists_count[artist] += 1
            end
        end
        @@artists_count
    end

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
end