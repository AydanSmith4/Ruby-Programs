require 'csv'
require 'dogapi'
require 'rubygems'

api_key = 'd8c8aa5318baf63b4216c591e36b7747'

dog = Dogapi::Client.new(api_key)

file = CSV.read('testprogram.csv')

points = [
  [Time.now, file[0][0]],
  [Time.now - 10, file[0][1]],
  [Time.now - 20, file[0][2]],
  [Time.now - 30, file[1][0]],
  [Time.now - 40, file[1][1]],
  [Time.now - 50, file[1][2]],
  [Time.now - 60, file[2][0]],
  [Time.now - 70, file[2][1]],
  [Time.now - 80, file[2][2]],
  [Time.now - 90, file[3][0]],
  [Time.now - 100, file[3][1]],
  [Time.now - 110, file[3][2]],
  [Time.now - 120, file[4][0]],
  [Time.now - 130, file[4][1]],
  [Time.now - 140, file[4][2]],
  [Time.now - 150, file[5][0]],
  [Time.now - 160, file[5][1]],
  [Time.now - 170, file[5][2]]
]

dog.emit_points('testfive', points)