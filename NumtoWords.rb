$numbers_to_words = {        #hashing the strings to integers
  1000000 => "million",
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19=>"nineteen",
  18=>"eighteen",
  17=>"seventeen", 
  16=>"sixteen",
  15=>"fifteen",
  14=>"fourteen",
  13=>"thirteen",              
  12=>"twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"
}
def numtowords(int)
    str = ""
    $numbers_to_words.each do |key, value|
      if int == 0
        return str
      elsif int.to_s.length == 1 && int/key > 0  #checks if length of the string is 1
        return str + "#{value}"      
      elsif int < 100 && int/key > 0
        return str + "#{value}" if int%key == 0  #checks if int is less than 100
        return str + "#{value} " + numtowords(int%key)
      elsif int/key > 0               #checks for the number which gives quotient greater than zero
        return str + numtowords(int/key) + " #{value} " + numtowords(int%key)
      end
    end
  end
  
  
  
 puts numtowords(436)