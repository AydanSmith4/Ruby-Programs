require 'csv'
require 'dogapi'
require 'rubygems'

api_key = 'insert api key'

dog = Dogapi::Client.new(api_key)

file = CSV.read('testprogram.csv')

points = [
  [Time.now, file[0][0]],
  [Time.now, file[0][1]],
  [Time.now, file[0][2]],
  [Time.now, file[1][0]],
  [Time.now, file[1][1]], 
  [Time.now, file[1][2]],
  [Time.now, file[2][0]],
  [Time.now, file[2][1]],
  [Time.now, file[2][2]],
  [Time.now, file[3][0]],
  [Time.now, file[3][1]],
  [Time.now, file[3][2]],
  [Time.now, file[4][0]],
  [Time.now, file[4][1]],
  [Time.now, file[4][2]],
  [Time.now, file[5][1]],
  [Time.now, file[5][2]]
]

dog.emit_points('test', points)



  
  
  
  
