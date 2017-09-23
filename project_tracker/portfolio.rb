#Setup the database to store projects into portfolio throughout program
require 'sqlite3'
db = SQLite3::Database.new("portfolio.db") 
db.results_as_hash = true
create_table =  <<-SQL 
  CREATE TABLE IF NOT EXISTS portfolio(
  id INTEGER PRIMARY KEY,
    project_name VARCHAR(225),
    project_number INT,
    start_date VARCHAR(225),
    end_date VARCHAR(225),
    position_title VARCHAR(225),
    hours INT,
    status VARCHAR(225)
  )
  SQL
db.execute(create_table)

#Methods
def make_change(project,db)
  #IF statement determining if any changes are to be made
  
  #Loop to continue asking if changes would like to be made

    puts "what would you like to change?"   #Selection of updates
    puts "1. Project name"                  #to be made to Trace System
    puts "2. Project number"              
    puts "3. Start date"
    puts "4. End date"
    puts "5. Position title"
    puts "6. Hours"
    puts "7. Status"
    respond2 = gets.chomp
  
  
  #IF statement updating a change in project information
  respond2 =respond2.to_i 
    if respond2 == 1
    puts "Please enter a new Project Name"
    project[project.keys[1]] = gets.chomp 
    elsif respond2 == 2 
    puts "Please enter a new Project Number"
    project[project.keys[2]] = gets.chomp
    elsif respond2 == 3
    puts "Please enter a new Start Date"
    project[project.keys[3]] = gets.chomp 
    elsif respond2 == 4 
    puts "Please enter a new End Date"
    project[project.keys[4]] = gets.chomp 
    elsif respond2 == 5
    puts "Please enter a new Position title"
    project[project.keys[5]] = gets.chomp 
    elsif respond2 == 6 
    puts "Please enter a new Hours"
    project[project.keys[6]] = gets.chomp 
    elsif respond2 == 7 
    puts "Please enter a new Status"
    project[project.keys[7]] = gets.chomp 
    else "Error"
    end 
    
    name = project[project.keys[1]]
    puts "#{project.keys[respond2]} = #{project[project.keys[respond2]]}"
    db.execute("UPDATE portfolio SET #{project.keys[respond2]}='#{project[project.keys[respond2]]}' WHERE project_name='#{project[project.keys[1]]}'")
  end 



#DRIVER MODE 
#Initiate variables
portfolio = {}
project = {}

puts "Would you like to create a project?"
  answer = gets.chomp 
    if answer == "yes"
      puts "What would you like to title your project?"
      project["project_name"] = gets.chomp
      puts "What is the project number"
      project["project_number"] = gets.chomp
      puts "What is the start date"
      project["start_date"] = gets.chomp 
      puts "What is the projected end date?"
      project["end_date"] = gets.chomp  
      puts "Please specify a position title"
      project["position_title"] = gets.chomp  
      puts "Please estimate the number of hours per week"
      project["hours"] = gets.chomp 
      puts "Please provide the project status"
      project["status"] = gets.chomp 
    end

db.execute("INSERT INTO portfolio (project_name,project_number,start_date,end_date,position_title,hours,status) VALUES (?,?,?,?,?,?,?)",[project["project_name"],project["project_number"],project["start_date"],project["end_date"],project["position_title"],project["hours"],project["status"]])
puts "Would you like to make any changes?"
respond = gets.chomp 
  while respond == "yes"
    puts "Please specify the project number"  
    pro_number = gets.chomp 
    project = db.execute("SELECT * FROM portfolio WHERE project_number = #{pro_number}")
    project_hash = project[0]
    #p project_hash[2]
    make_change(project_hash,db)
    puts "would you like to make any further changes?"
    respond = gets.chomp 
  end

db.execute("DELETE FROM portfolio WHERE project_name IS NULL") #Deletes blank rows
#puts db.execute("SELECT * FROM portfolio")

