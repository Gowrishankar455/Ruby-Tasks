class Song
    attr_writer :duration
    def initialize(name, artist, duration)
    @name= name
    @artist= artist
    @duration = duration
    end
    def to_s
        "Song: #@name--#@artist (#@duration)"
        end
    end
    song = Song.new("Bicyclops", "Fleck", 260)
    puts song.inspect
    puts song.to_s

class KaraokeSong < Song
        attr_reader :name, :artist, :duration,:lyrics
        def initialize(name, artist, duration, lyrics)
        super(name, artist, duration)
        @lyrics = lyrics
        end
        def to_s
            super + " [#@lyrics]"   #super keyword without arguments 
        end
end

    song2 = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
    puts song2.to_s
    puts song2.name+"---"+song2.lyrics
    song.duration=300
    puts song.to_s


#Class variables and methods

class PlaySong
    attr_reader :name, :artist, :duration
    MAX_TIME = 5*60
    @@plays = 0   #class variable
    def initialize(name, artist, duration)
    @name= name
    @artist= artist
    @duration = duration
    @plays= 0    #instance variable
    end
    def play
        @plays += 1
        @@plays += 1
        puts "This song: #@plays plays. Total #@@plays plays."
    end
    def PlaySong.is_too_long(song)
        return song.duration > MAX_TIME
    end
end
s1 = PlaySong.new("Song1", "Artist1", 234) 
s2 = PlaySong.new("Song2", "Artist2", 345)
s1.play
s2.play
s1.play
s1.play
s2.play
puts PlaySong.is_too_long(s1)
puts PlaySong.is_too_long(s2)