# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jwo = User.create email: "jwo@example.com", password: "12345678", password_confirmation: "12345678"
jwo.posts.create title: "Beef is Good", body: "See also: burgers"

leroy = User.create email: "leroy@example.com", password: "12345678", password_confirmation: "12345678"
leroy.posts.create title: "Do you even lift, bro?", body: "I can tell you do not"
