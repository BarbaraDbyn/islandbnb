# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Island.destroy_all
User.destroy_all

puts 'creating user'
jean = User.create(first_name: 'Jean', last_name: 'Berti', city: 'Lille', email: 'berti.jean@gmail.com', password: 'azerty')

puts 'Creating an island...'

  Island.create!(
    name: 'Acapulco',
    description: 'blablabla',
    continent: 'Asie',
    availability: true,
    price_per_day: 2000,
    user: jean
  )

  Island.create!(
    name: 'Cancun',
    description: 'blablabla',
    continent: 'Amerique du Nord',
    availability: true,
    price_per_day: 3000,
    user: jean
  )

Island.create!(
    name: 'Madrid',
    description: 'blablabla',
    continent: 'Asie',
    availability: true,
    price_per_day: 4000,
    user: jean
  )

puts 'Finished!'
