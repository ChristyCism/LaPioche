# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Review.destroy_all
Dispo.destroy_all
Message.destroy_all
User.destroy_all

puts "creating users..."
paul = User.create!({ first_name: 'Paul',
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
  })
toto = User.create!({ first_name: 'Toto',
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
  })
joe = User.create!({ first_name: 'Joe',
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
  })

denis = User.create!({ first_name: 'Denis',
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
})
claudine = User.create!({ first_name: 'Claudine',
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
{ farmer: toto,
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
   { reviewee: toto,
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
   { reviewee: toto,
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
    farmer: toto,
    duration: '' ,
    total_amount: '',
  },
   { confirmation: 'false' ,
    client: joe,
    farmer: toto,
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


puts "creating conversations..."
conversation_attributes = [
  { sender: denis,
    receiver: claudine,
  },
   { sender: claudine,
    receiver: denis,
  },
   { sender: toto,
    receiver: joe,
  },
   { sender: toto,
    receiver: paul,
  }
]


Conversation.create!(conversation_attributes)
puts "conversation created!"

puts "creating messages..."
message_attributes = [
  { conversation_id: 1,
    body: "Hello there how are you?",
    # user_id: 15,
  },
  { conversation_id: 1,
    body: "Hey answer mofo",
    # user_id: 15,
  },
    { conversation_id: 2,
    body: "Just trying to reach out",
    # user_id: 14,
  },
    { conversation_id: 2,
    body: "I'm here",
    # user_id: 15,
  }
]

# Message.create!(message_attributes)
# puts "message created!"
