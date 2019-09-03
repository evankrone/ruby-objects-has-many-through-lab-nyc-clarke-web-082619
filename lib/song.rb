class Song
    @@all = []
    attr_accessor :name, :artist, :genre
    
    def initialize (title, artist, genre)
        @name = title
        @artist = artist
        @genre = genre

        @@all << self
    end

    def self.all
        @@all
    end
end