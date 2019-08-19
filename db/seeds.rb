# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Island.destroy_all

puts 'Creating an island...'
islands_attributes = [
  {
    name: 'Sofia',
    description: 'blablabla',
    continent: 'Asie',
    availability: true,
    price_per_day: 2000
  },

  {
    name: 'Joe',
    description: 'blablabla',
    continent: 'Amerique du Nord',
    availability: true,
    price_per_day: 3000
  },

  {
    name: 'Sofia',
    description: 'blablabla',
    continent: 'Asie',
    availability: true,
    price_per_day: 4000
  }]

users_attributes = [
  {

  }
]

Island.create!(islands_attributes)
User.create!(users_attributes)
puts 'Finished!'
