# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

 #contact route that displays an address (you can make up the address).

 get '/contact' do
 " <h1>Address is 1600 N Pennsylvania Ave</h1>"
end

get '/great_job' do
  name=params[:name]
    if name 
      "Good job #{name}!"
    else
      "Good job!"
    end
end

get '/:num1/add/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  num1 = num1.to_i
  num2 = num2.to_i
  sum = (num1) + (num2)
  sum = sum.to_s
  "Total is #{sum}"
end

get '/search/:age' do
  student=db.execute("SELECT * FROM students WHERE age >?",[params[:age]]) 
  student.to_s
  
  # "List of students above #{params[:age]}"
  
  # student.each do |student|
  #     aged = "#{student[:name]} is #{student[:age]} years old"
  #     p aged
  # end

end