f = File.open("./received_file.txt") do |f|
    f.each_line do |line|
      words=line.split           #split the line into words array
      words.each do |word|       #loop through the words array
      if word =~ /http|www|https/
        urls = word.scan(/(((http|https):\/\/)?[\w\-\.]+[a-zA-Z0-9!\?@$%&=\.\/]{1,256}\.[a-z]*[^\s>\"]*)/) #scan for http or https
        if urls.any?
        puts urls[0][0]
        end
      end
    end
    end
  end

  #urls=word.scan(/(((https?|ftp):\/\/)?([\w\-\.])+(\.)([\w]){2,4}([\w\/+=%&_\.~?\-]*))*/)
