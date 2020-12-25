require 'pry'
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all
        #binding.pry
    end

    def add_song(song)
        song.artist = self
        #binding.pry
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
        #binding.pry
    end

    def self.song_count
        Song.all.count
    end
end