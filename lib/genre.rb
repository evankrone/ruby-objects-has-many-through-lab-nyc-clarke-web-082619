class Genre 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
         Song.all
    end

    def artists
        Song.all.map {|song| song.artist if song.genre == self}
        
    
    end

    def self.all
        @@all
    end

end