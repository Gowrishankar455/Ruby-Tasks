File.open("testfile.txt") do |file|
    while line = file.gets
    puts line
    end
end

File.open("testfile.txt") do |file|
    file.each_byte {|ch| putc ch; print "." }
end

File.open("testfile.txt") do |file|
    file.each_line {|line| puts "Got #{line.dump}" }
end