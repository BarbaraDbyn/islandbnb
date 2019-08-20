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
    description: 'Elle est située sur le littoral bordant l\'Océan pacifique, à 400 km au sud de Mexico,
                  dans une baie profonde semi-circulaire presque fermée, dont la facilité d\'accès et
                  la sureté du mouillage permet aux bateaux de rester le long des rochers qui bordent la côte.
                  La ville est construite sur une bande de terre étroite (moins d\'un kilomètre), entre la côte
                  et les montagnes de la Sierra Madre del Sur qui encerclent la baie.
                  Acapulco possède un climat tropical doux et le plus stable du continent américain, avec une
                  température moyenne annuelle de 28 °C. Les ouragans peuvent éventuellement toucher la zone à la fin de l’été2.
                  L\'effort pour introduire la brise de mer par un passage appelé l\'Abra de San Nicolas a eu des effets bénéfiques.
                  Sa population d\'après le recensement de 2010 est de 673 479 habitants.',
    continent: 'Asie',
    availability: true,
    price_per_day: 2000,
    user: jean,
    photo: open('https://images.unsplash.com/photo-1505881502353-a1986add3762?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2762&q=80')
  )

  Island.create!(
    name: 'Cancun',
    description: 'blablabla',
    continent: 'Amerique du Nord',
    availability: true,
    price_per_day: 3000,
    user: jean,
    photo: open('https://images.unsplash.com/photo-1484821582734-6c6c9f99a672?ixlib=rb-1.2.1&auto=format&fit=crop&w=2691&q=80')
  )

Island.create!(
    name: 'Madrid',
    description: 'blablabla',
    continent: 'Asie',
    availability: true,
    price_per_day: 4000,
    user: jean,
    photo: open('https://images.unsplash.com/photo-1468746587034-766ade47c1ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
  )

puts 'Finished!'
