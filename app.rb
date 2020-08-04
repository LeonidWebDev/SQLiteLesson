require "sqlite3"  #gem install sqlite3(install before)

db = SQLite3::Database.new "testt.db"

# add to db car
#db.execute "INSERT INTO Cars (Name, Price) VALUES ('Jaguar', 'X-150')"

            
db.execute "SELECT * FROM Cars" do |car|
	puts car
	puts "==="
end

db.close

