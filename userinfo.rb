
require 'mysql2'
class Mydb
    def initialize()   #function to establish connection with db
       begin
       @dbclient = Mysql2::Client.new(:host => 'localhost', :username => 'gowrishankar', :password=> 'Guhan200!',:database=> 'mydb')
       @dbclient.query("CREATE TABLE IF NOT EXISTS Userinfo(Userid INT PRIMARY KEY, Name VARCHAR(25),Age INT,Native VARCHAR(25))")
        puts "Table created"
        rescue Mysql2::Error =>e
            puts e
        end
    end
    def insert(id,name,age,native)   #function to insert values in to the table
        begin 
        @dbclient.query("INSERT INTO Userinfo(Userid,Name,Age,Native) VALUES(#{id},'#{name}',#{age},'#{native}')")
        puts "Inserted"
        rescue Mysql2::Error =>e
            puts e.errno
            puts e.error
        end
    end

    def update(param,value,key,keyvalue) #function to update the parameter using key
       begin
       @dbclient.query("UPDATE Userinfo set #{param}=#{value} where #{key}=#{keyvalue}")
       puts "Updated"
       rescue Mysql2::Error =>e
        puts e
       end
    end
    def delete(id)          #function to delete the row using id
        begin
        @dbclient.query("DELETE FROM Userinfo WHERE Userid=#{id}")
        puts "Deleted"
        rescue Mysql2::Error=>e
            puts e
        end
    end
    def print_table          #function to print the table
        begin
        @dbclient.query("SELECT * FROM Userinfo").each do |rows|
            puts rows
        end
        rescue Mysql2::Error=>e
            puts e
        end
    end
    def close_db            #function to close the db
        @dbclient.close 
    end


end
    
db=Mydb.new         #creating an object for Mydb
puts "1.insert\n2.update\n3.delete\n4.print\n5.close"
loop do
   n=gets.chomp
   n.strip
   n.to_i
   p n
  case n
  when "1"                             #1 for insert
    puts "Enter the id,name,age,native"
    id=gets.chomp
    name=gets.chomp
    age=gets.chomp
    native=gets.chomp
    db.insert(id.to_i,name,age.to_i,native)
  when "2"                            #2 for update
    puts "Enter param,value,key,keyvalue"
    param=gets.chomp
    value=gets.chomp
    key=gets.chomp
    keyvalue=gets.chomp
    db.update(param,value,key,keyvalue)
  when "3"                           #3 for delete
    puts "Enter the id:"
    id=gets.chomp
    db.delete(id)
  when "4"                           #4 for print the table
    db.print_table
  when "5"
    db.close_db
    break
  else
    puts "Enter between 1 to 5"
  end
end