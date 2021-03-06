Booking.destroy_all
Review.destroy_all
Dispo.destroy_all
Message.destroy_all
User.destroy_all

puts "creating users..."
emma = User.create!({
  first_name: 'Emma',
  last_name: 'Pelle',
  email: 'emma@lapioche.fr',
  password: 'azerty',
  city: 'villeurbanne',
  profile_picture: 'firg24ox0cqyuboo5ja5',
  photos: 'htuceahoj6dvgfdznxqm',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '35',
  totem_tool: 'Pioche'
  # dispos: 'Dimanche'
 })

arthur = User.create!({
  first_name: 'Arthur',
  last_name: 'Victorya',
  email: 'arthur@lapioche.fr',
  password: 'azerty',
  city: 'ecully',
  profile_picture: 'q1m5irxw5rwbo42kreub',
  photos: 'y4pxzubimuj2vdf9cg6v',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '35',
  totem_tool: 'Pioche'
  # dispos: 'Samedi'
 })

chris = User.create!({
  first_name: 'Chris',
  last_name: 'Talle',
  email: 'chris@lapioche.fr',
  password: 'azerty',
  city: 'lyon',
  profile_picture: 'bkjeoxupauqxjbvewdxi',
  photos: 'btcxefqehbvn7ajoqzqy',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '80',
  totem_tool: 'Pioche'
  # dispos: 'Dimanche'
 })

jeanne = User.create!({
  first_name: 'Jeanne',
  last_name: 'Darc',
  email: 'jeanne@lapioche.fr',
  password: 'azerty',
  city: 'Chaponost',
  profile_picture: 'acgm8tdivcrenam4by2x',
  photos: 'xt5hdv59s44vlbh5nrzj',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '50',
  totem_tool: 'Pioche'
  # dispos: 'Samedi'
 })

manu = User.create!({
  first_name: 'Manu',
  last_name: 'Cramon',
  email: 'manu@lapioche.fr',
  password: 'azerty',
  city: 'lyon',
  profile_picture: 'uv3loxwzltxgyto7ag8e',
  photos: 'henansgltjfzvrojoedu',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '30',
  totem_tool: 'Pioche'
  # dispos: 'Samedi'
 })
paul = User.create!({ first_name: 'Paul',
  last_name: 'LeJardinier',
  email: 'paul@lapioche.fr',
  password: 'azerty',
  city: 'villeurbanne',
  profile_picture: 'nawngelaimxevz6drhiq',
  photos: 'rhiqcbpqxie17g25ikry',
  bio: 'Aime arracher des mauvaises herbes et planter des carottes',
  isFarmer: 'true',
  skills: '',
  price: '20',
  totem_tool: 'Pioche'
  # dispos: 'Samedi'
 })
guy = User.create!({ first_name: 'Guy',
  last_name: 'Teub',
  email: 'guyteub@lapioche.fr',
  password: 'azerty',
  city: 'Ecully',
  profile_picture: 'n8ukdwujkjphpewh0l7v',
  photos: 'tbcrboto64zxa7clm4xu',
  bio: 'Aime les courgettes et répandre du fumier',
  isFarmer: 'true',
  skills: '',
  price: '25',
  totem_tool: 'Arrosoir'
  # dispos: 'Samedi'
 })
joe = User.create!({ first_name: 'Joe',
  last_name: 'LeNoob',
  email: 'joe@lapioche.fr',
  password: 'azerty',
  city: 'Lyon',
  profile_picture: 'hxuvom4shnjf3yuh5jrx',
  photos: 'mxdns29a8upl2ptzcdui',
  bio: "Aime les légumes, mais j'ai pas vraiment la main verte",
  isFarmer: 'true',
  skills: '',
  price: '100',
  totem_tool: ''
  # dispos: 'Dimanche'
 })

denis = User.create!({ first_name: 'Denis',
  last_name: 'Ledegourdi',
  email: 'denis@lapioche.fr',
  password: 'azerty',
  city: 'Lyon',
  profile_picture: '',
  photos: 'lu6dn6ohblvxi5vwyscr',
  bio: "J'y connais rien, mais j'adore les courgettes",
  isFarmer: 'false',
  skills: '',
  price: '',
  totem_tool: ''
  # dispos: ''
})
claudine = User.create!({ first_name: 'Claudine',
  last_name: 'Ary',
  email: 'cloclo@lapioche.fr',
  password: 'azerty',
  city: 'Vesoule',
  profile_picture: 'wsttc9i3d0sdgewtllfc',
  photos: 'emxz8f0s36vb42la9i39',
  bio: "Allez les verts !",
  isFarmer: 'false',
  skills: '',
  price: '',
  totem_tool: ''
  # dispos: ''
})
puts "users created!"

puts "creating dispos..."
dispos_attributes = [
 { farmer: paul,
  monday: 'false',
  tuesday: 'false',
  wednesday: 'true',
  thursday: 'false',
  friday: 'false',
  saturday: 'true',
  sunday: 'true',
 },
{ farmer: guy,
  monday: 'true',
  tuesday: 'true',
  wednesday: 'false',
  thursday: 'true',
  friday: 'true',
  saturday: 'false',
  sunday: 'false',
 },
]

Dispo.create!(dispos_attributes)
puts "dispos created!"

puts "creating reviews..."
reviews_attributes = [
 { reviewee: paul,
  reviewer: joe,
  title: 'Trop bien' ,
  content: 'Trop bien !',
  rating: 4 ,
 },
  { reviewee: guy,
  reviewer: claudine,
  title: 'Bof' ,
  content: 'Bof !',
  rating: 2 ,
 },
  { reviewee: paul,
  reviewer: claudine,
  title: 'Super sympa',
  content: 'Super sympa',
  rating: 3 ,
 },
  { reviewee: guy,
  reviewer: denis,
  title: 'crado',
  content: 'Un peu crado',
  rating: 1,
 }
]

Review.create!(reviews_attributes)
puts "reviews created!"

puts "creating reviews..."

bookings_attributes = [
 { confirmation: 'false' ,
  client: denis,
  farmer: paul,
  duration: '' ,
  total_amount: '',
 },
  { confirmation: 'false' ,
  client: claudine,
  farmer: guy,
  duration: '' ,
  total_amount: '',
 },
  { confirmation: 'false' ,
  client: joe,
  farmer: guy,
  duration: '' ,
  total_amount: '',
 },
  { confirmation: 'false' ,
  client: joe,
  farmer: paul,
  duration: '' ,
  total_amount: '',
 }
]

Booking.create!(bookings_attributes)
puts "bookings created!"

messages_attributes = [
{ body: "Salut Joe, savez vous planter les choux?",
  sender: claudine,
  receiver: joe,
  },
  { body: "Grave, Askip je le fais à la mode de chez vous!",
  sender: joe,
  receiver: claudine,
  },{ body: "Super, merci frR!",
  sender: claudine,
  receiver: joe,
  },{ body: "Bonjour Paul, j'aimerais savoir si vous pourriez m'aider à dégager les ronces autour de mon potager",
  sender: claudine,
  receiver: paul,
  },{ body: "Franchement t'as vu j'ai trop aps le temps par contre t'es célib?",
  sender: paul,
  receiver: claudine,
  },{ body: "Merci monsieur mais je vais chercher quelqu'un d'autre",
  sender: claudine,
  receiver: paul,
  },
]
Message.create!(messages_attributes)
puts "#{Message.all.count}messages created!"
