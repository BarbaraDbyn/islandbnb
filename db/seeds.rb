# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all

puts 'creating user'
jean = User.create!(first_name: 'Jean', last_name: 'Berti', city: 'Lille', email: 'berti.jean@gmail.com', password: 'azerty')
barbara = User.create!(first_name: 'Barbara', last_name: 'De Breyne', city: 'Comines', email: 'barbara.debreyne@orange.fr', password: 'azerty')
yoann = User.create!(first_name: 'Yoann', last_name: 'Bettinelli', city: 'Luxembourg', email: 'interiste54@gmail.com', password: 'azerty')

puts 'Finished creating Users'

Island.destroy_all
puts 'Creating islands...'

  Island.create!(
    name: 'Ilsa GitKommitzle ',
    description: 'Peite île située sur le littoral bordant l\'Océan pacifique, bordée par et les montagnes de la Sierra Madre del Sur qui encerclent la baie.
                  l\'Ilsa GitKommitzle possède un climat tropical doux et le plus stable du continent américain, avec une
                  température moyenne annuelle de 28 °C, elle n\'attends que vous!',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 12000,
    user: barbara,
    photo: open('https://images.unsplash.com/photo-1505881502353-a1986add3762?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2762&q=80'),
    address: '5 Miles Phillip Goldson Hwy, Belize City, Belize'
  )

  Island.create!(
    name: 'Rails Island',
    description: 'Rails Island, anciennement «Îles du Ruby», fait partie de l\'archipel canadien au large de la Colombie-Britannique.
                  Situées dans les eaux côtières de l\'Alaska du Sud-Est et de la Colombie-Britannique, elles comprennent deux îles
                  principales séparées par un très étroit chenal.',
    continent: 'Amérique du Nord',
    availability: true,
    price_per_day: 11000,
    user: jean,
    photo: open('https://images.unsplash.com/photo-1484821582734-6c6c9f99a672?ixlib=rb-1.2.1&auto=format&fit=crop&w=2691&q=80'),
    address: '7498 Highway 16, Skidegate, BC V0T 1S1, Canada'
  )

Island.create!(
    name: 'Pûsh ô Mâst',
    description: 'Pûsh ô Mâst est une île de la province cambodgienne de JavaScrinkville. Elle est connue pour ses criques de sable et
                  récifs coralliens, comme ceux situés autour du ponton de Koh Rong. À l\'intérieur des terres de l\'île,
                  une jungle dense est parsemée de cocotiers et de cascades.',
    continent: 'Asie',
    availability: true,
    price_per_day: 13000,
    user: yoann,
    photo: open('https://images.unsplash.com/photo-1468746587034-766ade47c1ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
    address: 'Unnamed Road, Krong Preah Sihanouk, Krong Preah Sihanouk, Cambodge'
  )

Island.create!(
    name: 'Sudo Teg',
    description: 'Sudo Teg, toponyme tongien signifiant littéralement en français « grande Maraboue », est une des îles des Fidji. Elle concentre sur une superficie de 10 km², située à 16 kilomètres à l\'ouest de Viti Levu.',
    continent: 'Océanie',
    availability: true,
    price_per_day: 40000,
    user: yoann,
    photo: open('https://images.unsplash.com/photo-1516091877740-fde016699f2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
    address: 'Vaiaku, Tuvalu'
  )

Island.create!(
    name: 'Apété Guèt',
    description: 'Apété Guèt fait partie de l\'archipel des Comores qui forme un ensemble d\'îles de l\'océan Indien situées au sud-est de l\'Afrique, entre le littoral nord mozambicain
                  et à la pointe nord de Madagascar. Il est constitué principalement de quatre îles: Grande Comore, Anjouan, Mohéli et Mayotte,',
    continent: 'Afrique',
    availability: true,
    price_per_day: 40000,
    user: barbara,
    photo: open('https://images.unsplash.com/photo-1530948990335-1eb93cbe6430?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
    address: 'Adresse : Mount Fleuri Road, Victoria, Seychelles'
  )

Island.create!(
    name: 'Haisse Cuèlle',
    description: 'Haisse Cuèlle est une petite ile de la côte nord islandaise, située à 35 km au nord d\'Jïqrëyrïê dans l\'Eyjafjörður. L\'ile est desservie par
                  un service de ferry partant de Árskógssandi et reliant l\'ile en 15 minutes. Depuis 2004, l\'ile n\'est plus une municipalité à part
                  entière et fait partie de la municipalité d\'Jïqrëyrïê.',
    continent: 'Europe',
    availability: true,
    price_per_day: 11000,
    user: jean,
    photo: open('https://images.unsplash.com/photo-1519491512949-b70aa1855e6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=796&q=80'),
    address: 'Sanday, Isle of Canna PH44 4RS, Royaume-Uni'
  )

puts 'Finished!'
