# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'
require 'json'

User.create(email:"mc@email.com", password:"123456")
User.create(email:"mt@email.com", password:"123456")
User.create(email:"kr@email.com", password:"123456")
User.create(email:"lw@email.com", password:"123456")
User.create(email:"yc@email.com", password:"123456")

puts "\ncreating ingredients\n.\n.\n."
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each_with_index do |ingredient, index|
  Ingredient.create(name:ingredient["strIngredient1"])
  puts "Drink #{index+1}: #{Ingredient.all[index].name}"
end

c = 1
5.times do
  puts "Creating Cocktail ..."
  Cocktail.create(name:Faker::Beer.name, user_id:c)
  rand(2..5).times do
    Dose.create(description:Faker::Measurement.volume, cocktail:Cocktail.last, ingredient:Ingredient.all[rand(0..99)])
  end
  puts "#{Cocktail.last.name}\n#{Cocktail.last.doses}"
  c += 1
end

