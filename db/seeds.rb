# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Booking.destroy_all
Island.destroy_all
User.destroy_all

puts 'Creating Users'
jean = User.create!(first_name: 'Jean', last_name: 'Berti', city: 'Lille', email: 'berti.jean@gmail.com', password: 'azerty')
jean.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/jean-berti"
jean.save!
barbara = User.create!(first_name: 'Barbara', last_name: 'De Breyne', city: 'Comines', email: 'barbara.debreyne@orange.fr', password: 'azerty')
barbara.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/barbaradbyn"
barbara.save!
yoann = User.create!(first_name: 'Yoann', last_name: 'Bettinelli', city: 'Luxembourg', email: 'interiste54@gmail.com', password: 'azerty')
yoann.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/YoDarcoDev"
yoann.save!
puts 'Finished creating Users'

puts 'Creating Islands...'

#************Asie************

push_o_mast = Island.new(
  name: 'Pûsh ô Mâst',
  description: 'Pûsh ô Mâst est une île de la province cambodgienne de JavaScrinkville. Elle est connue pour ses criques de sable et
                récifs coralliens, comme ceux situés autour du ponton de Koh Rong. À l\'intérieur des terres de l\'île,
                une jungle dense est parsemée de cocotiers et de cascades.',
  continent: 'Asie',
  availability: true,
  price_per_day: 13000,
  user: yoann,
  address: 'Krong Preah Sihanouk, Krong Preah Sihanouk, Cambodge'
)
push_o_mast.remote_photo_url = 'https://images.unsplash.com/photo-1468746587034-766ade47c1ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
push_o_mast.save!

heroku = Island.new(
  name: 'Herökû',
  description: 'Herökû L\'île Rebun ou Rebun-tō est une île située en mer du Japon au nord-ouest d`\Hokkaidō. L\'île est a environ 50 km des côtes de Hokkaidō.
                Administrativement, l\'île dépend du bourg de Rebun. Elle fait partie du parc national de Rishiri-Rebun-Sarobetsu. Le mont Rebun est le point
                le plus élevé de l\'île à 490 m d\'altitude.',
  continent: 'Asie',
  availability: true,
  price_per_day: 6000,
  user: jean,
  address: 'Île Rebun, Japon'
  )
  heroku.remote_photo_url = 'https://images.unsplash.com/photo-1545696724-89e7e2f087e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80'
  heroku.save!

yapahdbil = Island.new(
  name: 'Yapahdbïl',
  description: 'Yahpadbïl Kanghwa ou Ganghwa est une île située sur la côte ouest de la Corée du Sud, à proximité de la frontière de Corée du Nord. Elle a une
                superficie de 12,4 km² et une population d\'environ 65 habitants. Elle fait partie du district de Ganghwa, une division de la municipalité d\'Incheon.',
  continent: 'Asie',
  availability: true,
  price_per_day: 6000,
  user: barbara,
  address: 'Île à Incheon, Corée du Sud'
  )
  yapahdbil.remote_photo_url = 'https://images.unsplash.com/photo-1506790409786-287062b21cfe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80'
  yapahdbil.save!

onizuka = Island.new(
  name: 'Onizuka',
  description: 'Onizuka est une île volcanique japonaise de l’archipel d\'Izu. Onizuka est situé au sud-est du cap d\'Izu et de la baie de Sagami, et au large de la
                préfecture de Tokyo dont l\'île dépend administrativement',
  continent: 'Asie',
  availability: true,
  price_per_day: 6000,
  user: yoann,
  address: 'Amami-Ōshima, Japon'
  )
  onizuka.remote_photo_url = 'https://images.unsplash.com/photo-1481325828126-d57127c9d39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=734&q=80'
  onizuka.save!

arigato = Island.new(
    name: 'Arîï Gätô',
    description: 'Arîï Gätô est l\'île principale des îles Miyako, dans l\'archipel Sakishima des îles Ryūkyū au Japon. Située en mer de Chine orientale, sa pointe orientale baigne la mer des Philippines.',
    continent: 'Asie',
    availability: true,
    price_per_day: 40000,
    user: barbara,
    address: 'Yakushima, Japon'
  )
  arigato.remote_photo_url ='https://images.unsplash.com/photo-1530948990335-1eb93cbe6430?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  arigato.save!


  #************Afrique************


apete_guete = Island.new(
    name: 'Apété Guèt',
    description: 'Apété Guèt fait partie de l\'archipel des Comores qui forme un ensemble d\'îles de l\'océan Indien situées au sud-est de l\'Afrique, entre le littoral nord mozambicain
                  et à la pointe nord de Madagascar. Il est constitué principalement de quatre îles: Grande Comore, Anjouan, Mohéli et Mayotte,',
    continent: 'Afrique',
    availability: true,
    price_per_day: 40000,
    user: barbara,
    address: 'Mount Fleuri Road, Victoria, Seychelles'
  )
  apete_guete.remote_photo_url ='https://images.unsplash.com/photo-1557648490-96bebb484a89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80'
  apete_guete.save!

akunamatata = Island.new(
    name: 'Akuna Matata',
    description: 'Akuna Matata, aussi appelée île du phacochère, est une île de l\'archipel de Zanzibar en Tanzanie. Old town est un vieux centre de commerce abritant des mosquées et des ruelles sinueuses.
                 La House of Wonders, datant de 1883, est un ancien palais de sultan doté d\'une tour d\'horloge. Le Vieux fort héberge aujourd\'hui un centre culturel et un amphithéâtre en pierre.
                 Les aqueducs souterrains alimentaient en eau chaude les thermes perses de Hamamni à la fin du XIXe siècle.',
    continent: 'Afrique',
    availability: true,
    price_per_day: 40000,
    user: yoann,
    address: 'Unguja, Tanzanie'
  )
  akunamatata.remote_photo_url ='https://images.unsplash.com/photo-1535779023901-a39d15762564?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80'
  akunamatata.save!

praslin = Island.new(
    name: 'Praslin',
    description: 'PraslinPraslin est une île située aux Seychelles, dans l\'océan Indien. Elle est connue pour ses plages bordées de palmiers, comme Anse Georgette et Anse Lazio,
                  le long desquelles se dressent de gros rochers de granite. La plage principale, Anse Volbert-Côte d\'Or, fait face à l\'îlot Chauve Souris situé en pleine mer.
                  Les terres sauvages de Praslin, couvertes par la jungle, abritent le parc national de Praslin qui comprend la réserve naturelle de la vallée de Mai.',
    continent: 'Afrique',
    availability: true,
    price_per_day: 40000,
    user: jean,
    address: 'Praslin, Seychelles'
  )
  praslin.remote_photo_url = 'https://images.unsplash.com/photo-1509057095372-215f8cc53d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80'
  praslin.save!


#************Amérique NORD************

  railsisland = Island.new(
    name: 'Rails Island',
    description: 'Rails Island, anciennement «Îles du Ruby», fait partie de l\'archipel canadien au large de la Colombie-Britannique.
                  Situées dans les eaux côtières de l\'Alaska du Sud-Est et de la Colombie-Britannique, elles comprennent deux îles
                  principales séparées par un très étroit chenal.',
    continent: 'Amérique du Nord',
    availability: true,
    price_per_day: 10000,
    user: yoann,
    address: 'Isla Montserrat'
  )
    railsisland.remote_photo_url = 'https://images.unsplash.com/photo-1484821582734-6c6c9f99a672?ixlib=rb-1.2.1&auto=format&fit=crop&w=2691&q=80'
    railsisland.save!

  poutine = Island.new(
    name: 'l\'Île La poutine',
    description: 'L\'île de la poutine fait partie de l\'archipel des Mille-Îles est un ensemble d\'îles situées dans le fleuve Saint-Laurent, là où ce dernier émerge du coin nord-est du lac Ontario.',
    continent: 'Amérique du Nord',
    availability: true,
    price_per_day: 10000,
    user: jean,
    address: 'Ash Island, Canada'
  )
    poutine.remote_photo_url = 'https://66.media.tumblr.com/f4e5deaeab38fa26b3dacc609f685d6e/tumblr_pb6v62k01A1szm930o1_1280.jpg'
    poutine.save!

 boldt = Island.new(
    name: 'Château de Boldt, Heart Island',
    description: 'Le château de Boldt se trouve sur Heart Island dans l\'archipel des Mille-Îles sur le fleuve Saint-Laurent, le long de la frontière nord de l\'État de New York.',
    continent: 'Amérique du Nord',
    availability: true,
    price_per_day: 10000,
    user: barbara,
    address: 'Heart Island, Canada'
  )
    boldt.remote_photo_url = 'http://www.boldtcastle.com/visitorinfo/wp-content/uploads/2018/08/purchaseonlinetickets.jpg'
    boldt.save!

 cabineinthelake = Island.new(
    name: 'Cabine du Caribou',
    description: 'Petite cabane au centre de l\'étang de la baie du Caribou située dans le parc national de la Mauricie.',
    continent: 'Amérique du Nord',
    availability: true,
    price_per_day: 10000,
    user: jean,
    address: 'Baie en Bas du Caribou, Canada'
  )
    cabineinthelake.remote_photo_url = 'https://i.pinimg.com/564x/9b/2c/e8/9b2ce8c58d72343b9155354af5233dbd.jpg'
    cabineinthelake.save!

#************AMERIQUE SUD************


  reinita = Island.new(
    name: 'La reinita del pacifico',
    description: 'L\'île Socorro est une île tropicale équatorienne, bércée dans l\'océan Pacifique.
                  Située dans une reserve naturelle, un dépaysement garanti... gare aux prédateurs...',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 5000,
    user: barbara,
    address: 'Puerto Villamil, Équateur'
  )
  reinita.remote_photo_url = 'https://images.unsplash.com/photo-1544550581-1bcabf842b77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=358&q=80'
  reinita.save!

  islagitkommitzle = Island.new(
    name: 'Ilsa GitKommitzle ',
    description: 'Peite île située sur le littoral bordant l\'Océan pacifique.L\'Ilsa GitKommitzle possède un climat tropical doux et le plus stable du continent américain, avec une
                  température moyenne annuelle de 28 °C, elle n\'attends que vous!',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 12000,
    user: yoann,
    address: 'Northern Two Cayes, Belize'
  )
    islagitkommitzle.remote_photo_url = 'https://images.unsplash.com/photo-1505881502353-a1986add3762?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2762&q=80'
    islagitkommitzle.save!

  lamorenita = Island.new(
    name: 'La morenita ',
    description: 'Peite cabane bordant Santa Marta en Colombie, cette cabane au coeur des Caraïbes vous donnera plus envie de repartir!',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 12000,
    user: jean,
    address: 'Coral Caye, Belize'
  )
    lamorenita.remote_photo_url = 'https://197travelstamps.com/wp-content/uploads/2018/02/35-min.jpg'
    lamorenita.save!

  latimidita = Island.new(
    name: 'La timidita ',
    description: 'Cabane sur l\'île de bordant Santa Marta en Colombie, cette cabane au coeur des Caraïbes vous donnera plus envie de repartir!',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 12000,
    user: barbara,
    address: 'Isla Gorgonilla, Colombia'
  )
    latimidita.remote_photo_url = 'https://www.mandaley.fr/wp-content//2018/04/ile-au-belize-bandeau.jpg'
    latimidita.save!

  latchiquita = Island.new(
    name: 'La chiquita',
    description: 'La chiquita est une Cabane sur l\'île de Coral Caye dans les Bélizes, venez vous évader...',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 12000,
    user: jean,
    address: 'Coral Caye, Belize'
  )
    latchiquita.remote_photo_url = 'https://images.squarespace-cdn.com/content/v1/52c9f4ebe4b02c7007cdd86a/1547602299745-RF0J102PDQ6HCWRS197E/ke17ZwdGBToddI8pDm48kC4W4PSQhpVWDByTSitY1zx7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0lqfkVpRp1g_2L-WsTQRP4LMjfKA94DoXwU9mfbZ0wueidatsgNTogRoJ7w_N-gAYA/image-asset.jpeg?format=1000w'
    latchiquita.save!

 sanandres = Island.new(
    name: 'San Peyote',
    description: 'San Peyote est une île colombienne de la mer des Caraïbes, au large de la côte du Nicaragua, proche du parc régional de Mangrove Old Point, une réserve naturelle abritant des crabes, des iguanes et des oiseaux.',
    continent: 'Amérique du Sud',
    availability: true,
    price_per_day: 9000,
    user: barbara,
    address: 'San Andrés, Colombie'
  )
    sanandres.remote_photo_url = 'https://s3-pro.roomonline.es/cobi/media/www.sirenishotels.com/0c/42/san_andres_colombia_04.jpg'
    sanandres.save!

#************EUROPE************


haissecuelle = Island.new(
    name: 'Haisse Cuèlle',
    description: 'Haisse Cuèlle est une petite ile de la côte nord islandaise, située à 35 km au nord d\'Jïqrëyrïê dans l\'Eyjafjörður. L\'ile est desservie par
                  un service de ferry partant de Árskógssandi et reliant l\'ile en 15 minutes. Depuis 2004, l\'ile n\'est plus une municipalité à part
                  entière et fait partie de la municipalité d\'Jïqrëyrïê.',
    continent: 'Europe',
    availability: true,
    price_per_day: 11000,
    user: jean,
    address: 'Tsouloufi, grèce'
  )
    haissecuelle.remote_photo_url= 'https://images.unsplash.com/photo-1519491512949-b70aa1855e6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=796&q=80'
    haissecuelle.save!

iledeyavascreapt = Island.new(
    name: 'Île de Yâvä Screapt',
    description: 'Yâvä Screapt  fait partie de l\'archipel des îles Pontines dans la Mer Tyrrhénienne, à 33 km à l\'ouest du Mont Circé',
    continent: 'Europe',
    availability: true,
    price_per_day: 6000,
    user: jean,
    address: 'île de Giglio, Italie'
  )
    iledeyavascreapt.remote_photo_url = 'https://images.unsplash.com/photo-1511311910288-e78b830d4187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
    iledeyavascreapt.save!

scriptopopulos = Island.new(
    name: 'Scripto Populos',
    description: 'Scripto Populos, est une île grecque de la mer Égée appartenant à l\'archipel des Cyclades. On rencontre parfois la forme ancienne Milo, notamment pour la célèbre Vénus de Milo.',
    continent: 'Europe',
    availability: true,
    price_per_day: 6000,
    user: jean,
    address: 'Milos, Grèce'
  )
    scriptopopulos.remote_photo_url = 'https://images.unsplash.com/photo-1534283638241-a0fa146e5015?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80'
    scriptopopulos.save!

#************OCEANIE************


sudoteg = Island.new(
    name: 'Sudo Teg',
    description: 'Sudo Teg, toponyme tongien signifiant littéralement en français « grande Maraboue », est une des îles des Fidji. Elle concentre sur une superficie de 10 km², située à 16 kilomètres à l\'ouest de Viti Levu.',
    continent: 'Océanie',
    availability: true,
    price_per_day: 40000,
    user: yoann,
    address: 'Vaiaku, Tuvalu'
  )
    sudoteg.remote_photo_url = 'https://images.unsplash.com/photo-1516091877740-fde016699f2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
    sudoteg.save!

savaii = Island.new(
    name: 'Savai\'i',
    description: 'Savai\'i, aussi orthographié Savaii, anciennement Salafai, est la plus grande des deux îles principales des Samoa, dans le Sud de l\'océan Pacifique.',
    continent: 'Océanie',
    availability: true,
    price_per_day: 40000,
    user: yoann,
    address: 'Vaiaku, Tuvalu'
  )
    savaii.remote_photo_url = 'http://www.traveller.com.au/content/dam/images/g/t/9/2/z/l/image.related.articleLeadwide.620x349.gt927h.png/1484098509567.jpg'
    savaii.save!

#************END************



puts 'Finished!'
