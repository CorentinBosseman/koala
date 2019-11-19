# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Je me log
# J’arrive sur le dashboard avec 2 programmes en cours, 1 challenges, 1 challengers
# Je me rends sur programmes index
# Je choisi un nouveau programme
# Je fais 3 taches
# Je retourne sur le Dashboard et je refuse le challenger
# Je montre mes badges (3badges)
# J’accepte un ami
# Je crée un challenge avec cet ami
puts "Destroy all instances"
Friendship.destroy_all
User.destroy_all
Program.destroy_all
Challenge.destroy_all
Task.destroy_all

puts "Creating users"
corentin = User.create!(
  id: 1,
  pseudo: "corentin",
  email: "corentin@example.com",
  password: "password",
  avatar: "",
  )

remi = User.create!(
  id: 2,
  pseudo: "remi",
  email: "remi@example.com",
  password: "password",
  avatar: "",
  )
# corentin.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

# remi.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

laszlo = User.create!(
  id: 3,
  pseudo: "laszlo",
  email: "laszlo@example.com",
  password: "password",
  avatar: "",
  )
# laszlo.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

christophe = User.create!(
  id: 4,
  pseudo: "christophe",
  email: "christophe@example.com",
  password: "password",
  avatar: "",
  )
# christophe.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

daphnee = User.create!(
  id: 5,
  pseudo: "daphnée",
  email: "daphnee@example.com",
  password: "password",
  avatar: "",
  )
# daphnee.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

puts "Creating friendships"

corentin_remi = Friendship.create!(
  status: "Accepted",
  user_id: 1,
  friend_id: 2,
  )

corentin_laszlo = Friendship.create!(
  status: "Accepted",
  user_id: 1,
  friend_id: 3,
  )

corentin_christophe = Friendship.create!(
  status: "Accepted",
  user_id: 1,
  friend_id: 4,
  )

corentin_daphnee = Friendship.create!(
  status: "Pending",
  user_id: 1,
  friend_id: 5,
  )

puts "Creating programs"

un_nouveau_depart = Program.create!(
  id: 1,
  title: "Un nouveau départ",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 1,
  category: "Nourriture",
  )

# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

un_etat_desprit = Program.create!(
  id: 2,
  title: "Un état d'esprit",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 1,
  )
# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

premieres_economies = Program.create!(
  id: 3,
  title: "L'eau coule à flot",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 1,
  )
# premieres_economies = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

vivre_avec_saison = Program.create!(
  id: 4,
  title: "Vivre avec les saisons",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Nourriture",
  position: 2,
  )
# vivre_avec_saison = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

puts "Creating users programs"

program_completed = User_program.create!(
  completed: true,
  )













