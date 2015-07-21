# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



(1..7).each do |n|
  object = s3.buckets['ninabucket'].objects["test/#{n}.jpg"]
  
  Picture.create!(data: File.open(object.url_for(:get, {:secure => true }).to_s))
end