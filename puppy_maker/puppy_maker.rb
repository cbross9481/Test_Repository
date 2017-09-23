require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("puppies.db")

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS puppies(
		id INTEGER PRIMARY KEY,
		name VARCHAR(225),
		age INT
	)
	SQL
db.execute(create_table_cmd)
def create_puppies(db, name, age)
  db.execute("INSERT INTO puppies (name, age) VALUES (?, ?)", [name, age])
end

#5.times do
 # create_puppies(db, Faker::Name.name, 0)
# end

all_puppies = db.execute("SELECT * FROM puppies")
puts all_puppies