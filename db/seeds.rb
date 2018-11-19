# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_attributes = [
  { first_name: 'Paul',
    last_name: 'LeJardinier',
    email: 'paul@lapioche.fr',
    password: 'azerty',
    city: 'Lyon',
    profile_picture: '',
    photos: '',
    bio: 'Aime arracher des mauvaises herbes et planter des carottes',
    farmer: 'true',
    skills: '',
    price: '20',
    totem_tool: 'Pioche'
  },
  { first_name: 'Toto',
    last_name: 'LaBricole',
    email: 'toto@lapioche.fr',
    password: 'azerty',
    city: 'Lyon',
    profile_picture: '',
    photos: '',
    bio: 'Aime les courgettes et répandre du fumier',
    farmer: 'true',
    skills: '',
    price: '25',
    totem_tool: 'Arrosoir'
  },
  { first_name: 'Joe',
    last_name: 'LeNoob',
    email: 'joe@lapioche.fr',
    password: 'azerty',
    city: 'Lyon',
    profile_picture: '',
    photos: '',
    bio: "Aime les légumes, mais j'ai pas vraiment la main verte",
    farmer: 'false',
    skills: '',
    price: '',
    totem_tool: ''
  },
    { first_name: 'Denis',
    last_name: 'Ledegourdi',
    email: 'denis@lapioche.fr',
    password: 'azerty',
    city: 'Lyon',
    profile_picture: '',
    photos: '',
    bio: "J'y connais rien, mais j'adore les courgettes",
    farmer: 'false',
    skills: '',
    price: '',
    totem_tool: ''
},
{   first_name: 'Claudine',
    last_name: 'Ary',
    email: 'cloclo@lapioche.fr',
    password: 'azerty',
    city: 'Vesoule',
    profile_picture: '',
    photos: '',
    bio: "Allez les verts !",
    farmer: 'false',
    skills: '',
    price: '',
    totem_tool: ''
}
]

messages_attributes = [
  { sender_id: 1,
    receiver_id: 2,
    content: 'Hello !',
  },
   { sender_id: 2,
    receiver_id: 3,
    content: 'Bonjour !',
  },
   { sender_id: 3,
    receiver_id: 4,
    content: 'Coucou !',
  },
   { sender_id: 4,
    receiver_id: 1,
    content: 'Salut !',
  }
]

dispos_attributes = [
  { farmer_id: 1,
    monday: 'false',
    tuesday: 'false',
    wednesday: 'true',
    thursday: 'false',
    friday: 'false',
    saturday: 'true',
    sunday: 'true',
  },
{ farmer_id: 2,
    monday: 'true',
    tuesday: 'true',
    wednesday: 'false',
    thursday: 'true',
    friday: 'true',
    saturday: 'false',
    sunday: 'false',
  },
]

reviews_attributes = [
  { reviewee_id: 1,
    reviewer_id: 2,
    title: 'Trop bien' ,
    content: 'Trop bien !',
    rating: 4 ,
  },
   { reviewee_id: 3,
    reviewer_id: 4,
    title: 'Bof' ,
    content: 'Bof !',
    rating: 2 ,
  },
   { reviewee_id: 3,
    reviewer_id: 2,
    title: 'Super sympa',
    content: 'Super sympa',
    rating: 3 ,
  },
   { reviewee_id: 1,
    reviewer_id: 4,
    title: 'crado',
    content: 'Un peu crado',
    rating: 1,
  }
]

bookings_attributes = [
  { confirmation: 'false' ,
    client_id: 3,
    farmer_id: 1,
    duration: '' ,
    total_amount: '',
  },
   { confirmation: 'false' ,
    client_id: 4,
    farmer_id: 2,
    duration: '' ,
    total_amount: '',
  },
   { confirmation: 'false' ,
    client_id: 5,
    farmer_id: 1,
    duration: '' ,
    total_amount: '',
  },
   { confirmation: 'false' ,
    client_id: 2,
    farmer_id: 1,
    duration: '' ,
    total_amount: '',
  }
]

#User.create!(users_attributes)
#Message.create!(messages_attributes)
#Dispo.create!(dispos_attributes)
#Review.create!(reviews_attributes)
#Booking.create!(bookings_attributes)
