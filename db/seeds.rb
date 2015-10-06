# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  "Outdoors activities",
  "Architecture",
  "Animals and Pets",
  "Art",
  "Weddings",
  "DIY & Crafts",
  "Posters and Illustrations",
  "Science and Nature",
  "Quotes",
  "Cars and Motorcycles",
  "Food and Drink",
  "Home decor",
  "Sports",
  "Design",
  "Education",
  "Celebrities",
  "Holidays and Events",
  "Photography",
  "History",
  "Humor",
  "Gardening",
  "Film, Music and Books",
  "Womens fashion",
  "Kids",
  "Hair and Beauty",
  "Products",
  "Health and Fitness",
  "Tattoos",
  "Technology",
  "Travels",
  "Others",
]

categories.each do |c|
  Category.create(:name => c)
end
