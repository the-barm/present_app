# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



(1..7).each do |n|
  Picture.create!(data: File.open(File.join(Rails.root, "/app/assets/images/#{n}.jpg")))
end

User.create!(name:  "ExampleUser",
             email: "example@exmpl.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)