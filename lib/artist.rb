class Artist
    @@all = []
    attr_accessor :name, :genre

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    
    def new_song(title,genre)
        Song.new(title,self,genre)
    end

    def genres
        Genre.all
    end

    def self.all
        @@all
    end
end
