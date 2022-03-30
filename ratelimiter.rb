require 'time'
class User
def initialize()
    @hash = Hash.new { |hash, key| hash[key] =[0]}   #hash of arrays
    @array=Array.new
    @start=0
    @finish=0
    @index=5
end
def [](key)
    if(@hash[key][0]==0)
        @hash[key][0]||=0
        @hash[key][0]+=1
        @start=Process.clock_gettime(Process::CLOCK_MONOTONIC)  #function which return the current value of time for the specified clock_id.
        puts @start
        @hash[key].push(@start.to_i)         #storing the start time at index 1
        @hash[key].push(0)
    else
       @hash[key][0]+=1                     #index 1 for counting number of occurence
       @finish=Process.clock_gettime(Process::CLOCK_MONOTONIC)
       print "Request made at ",@finish.to_i-@hash[key][1]," second\n"
       puts "Request Time: "
       @hash[key].push(@finish.to_i-@hash[key][1])
       p @hash[key]
       if(@hash[key][0]>3)                 #if occurence is greater than 3
        if(@hash[key][@hash[key].length-1]-@hash[key][@hash[key].length-1-3]<20)           #-@hash[key][@index-3]
            duration=@hash[key][@hash[key].length-1]-@hash[key][@hash[key].length-1-3]
            print "You tried 4 requests within ",duration," seconds ","Please wait for ",20-duration," seconds\n"
            puts "Error limit exceeded"
            puts "index = ",@index
            @hash[key].pop
            @hash[key][0]-=1
        else
            @index+=1
        end
       end
   end
end
end
d=User.new
loop do
    username=gets
    d[username]
    
end