# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PersonName.create(name: 'nilesh')

ary = ["suresh","sailesh"]
 ary.each do |sample|
 	PersonName.create(name: sample)
 end


ary = ["10:00-11:00","11:00-12:00","12:00-13:00"]
 ary.each do |sample|
 	Doctor.create(start_time: sample)
 end


 ary = ["Sunday","Monday","Tuesday","Wednesday","Thursday
 	","Friday","Saturday"]
 ary.each do |sample|
 	Wek.create(name: sample)
 end