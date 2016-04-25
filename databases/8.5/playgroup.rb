# Playgroup calendar to make wifey life a lil easier

require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("playgroups.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS playgroups (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    kids INT,
    address VARCHAR(255)
  )
SQL


#write method to add populated rows to table
	def new_playgroup(db, name, kids, address)
		db.execute("INSERT INTO playgroups (name, kids, address) VALUES (?,?,?)", [name, kids, address])
	end


#Create 5 different playgroups using fake everything
	5.times do 
		new_playgroup(db, Faker::Name.name, Faker::Number.between(2, 8), Faker::Address.street_address)
	end

# write method to cancel next scheduled playgroup
	def cancel_next(db, reason)
		db.execute("DELETE FROM playgroups WHERE id=1")
		puts "Next available playgroup has been canceled due to #{reason}"
	end

# write method to change location based on name
	def change_location(db,new_location, name)
		db.execute("UPDATE playgroups SET address=? WHERE name=?", [new_location, name])
		puts "#{name} has changed the location to #{new_location}"
	end
# write method to print message when more than 4 kids attending
	def request_backup(db)
		db.execute("SELECT * FROM playgroups WHERE kids>=5")
		puts "We'll need backup!!!"
	end
# write method to print list of next 10 scheduled playgroups
	def next_ten_hosts(db)
		array1 = []
		array1 << db.execute("SELECT name FROM playgroups WHERE id<=10")
		puts "Next ten hosts are..."
		array1[0].each do |i|
			puts i 
			puts "--------------"
		end
	end
# write method to list all scvheduled playgroups and print 'pretty'	
	def all_scheduled(db)
		all_array=[]
		all_array = db.execute("SELECT * FROM playgroups")
		all_array.each do |i|
			puts "Host:#{i[1]}, Location:#{i[3]}, Kids attending:#{i[2]}"
		end		
	end

# get user input 
choice = ""

puts "Hi! Welcome to out Playgroup Schedule!"
puts "What would you like to do? Please type corresponding number and press enter"
puts "Or type exit "

puts "1) See currently scheduled playgroups"
puts "2) Cancel the next scheduled playgroup"
puts "3) Request location change"
puts "4) See the next ten people hosting"
# write loop to run specific methods based on user input or exit	
until choice == "exit"
		choice = gets.chomp
	if choice == "1"
			all_scheduled(db)
	elsif choice == "2"
			puts "Oh no! Why would you like to cancel?"
			reason= gets.chomp
			cancel_next(db, reason)
	elsif  choice == "3"
			puts "No problem! What is your name?"
			name = gets.chomp
			puts "What is the new address?"
			new_location = gets.chomp
			change_location(db, new_location, name)

	elsif choice == "4"
			next_ten_hosts(db)
	else
			if choice == "exit"
				puts "See you at playgroup!"
			else
				puts "Please enter a valid # or type exit"
			end
	end
end


###DRIVER CODE###
db.execute(create_table)
cancel_next(db, "rain")
change_location(db, "Spooner st.", "Miss")
request_backup(db)
next_ten_hosts(db)



