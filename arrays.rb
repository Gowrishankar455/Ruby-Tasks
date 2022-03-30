a = [ 3.14159,"pie", 99 ]
b=Array.new
b=a
puts b
b[0]=5.5
puts a
b.dup
b[0]="B changed"
puts b
puts " New array"
a = [ 1, 3, 5, 7, 9 ]
a[1] = 'bat'
a[-3] = 'cat'
a[3] = [ 9, 8 ]
puts "Array ", a
puts "Array 1,3 -", a[1, 3]
puts "Array 3,1 -", a[3, 1]
puts "Array -3,2 -", a[-3, 2]
puts "Array ",a


#Hashes
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
h.length
puts h['dog']
h['cow'] = 'bovine'
h[12]= 'dodecine'
puts h['cat']
puts h

#SongList container
class SongList
    attr_reader :songs
    def initialize
    @songs = Array.new
    end
end
class SongList
    def append(song)
    @songs.push(song)
    self
    end
end
class SongList
    def delete_first
    @songs.shift
    end
    def delete_last
    @songs.pop
    end
end
class SongList
    def [](index)
    @songs[index]
    end
end
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

list = SongList.new
s1 = Song.new('title1', 'artist1', 1)
s2 = Song.new('title2', 'artist2', 2)
s3 = Song.new('title3', 'artist3', 3)
s4 = Song.new('title4', 'artist4', 4)
list.append(s1).append(s2).append(s3).append(s4)
puts list.songs
puts "After deleting"
list.delete_first
list.delete_last
puts list.songs