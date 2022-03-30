def show_regexp(a, re)
    if a =~ re
    puts "#{$`}<<#{$&}>>#{$'}"
    else
    puts "no match"
    end
end
    show_regexp('very interesting', /t/)
    show_regexp('Fats Waller', /a/)
    show_regexp('Fats Waller', /ll/)
    show_regexp('Fats  Waller', /z/)
    show_regexp('yes (no)', /\(no\)/)
    show_regexp('are you sure?', /e\?/)
    a = 'see [Design Patterns-page 123]'
   show_regexp(a, /[-]/)
   show_regexp(a, /[^a-z]/)
    a = "red ball blue sky"
   show_regexp(a, /d|e/)
   show_regexp(a, /al|lu/)

   show_regexp('banana', /an*/)
   show_regexp('banana', /(an)*/)
   show_regexp('banana', /(an)+/)

   
p "Seven".match /.even/
p "even".match /.?even/
p "eleven".match /.even/
p "proven".match /.even/
