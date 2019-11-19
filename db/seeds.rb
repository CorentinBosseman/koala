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
Challenger.destroy_all
UserChallenge.destroy_all
UserTask.destroy_all
UserProgram.destroy_all

Friendship.destroy_all
User.destroy_all


Task.destroy_all
Program.destroy_all
Challenge.destroy_all

puts "Creating users"
corentin = User.create!(
  pseudo: "corentin",
  email: "corentin@example.com",
  password: "password",
  avatar: "",
  )

remi = User.create!(
  pseudo: "remi",
  email: "remi@example.com",
  password: "password",
  avatar: "",
  )
# corentin.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

# remi.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

laszlo = User.create!(
  pseudo: "laszlo",
  email: "laszlo@example.com",
  password: "password",
  avatar: "",
  )
# laszlo.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

christophe = User.create!(
  pseudo: "christophe",
  email: "christophe@example.com",
  password: "password",
  avatar: "",
  )
# christophe.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

daphnee = User.create!(
  pseudo: "daphnée",
  email: "daphnee@example.com",
  password: "password",
  avatar: "",
  )
# daphnee.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

puts "Creating friendships"

corentin_remi = Friendship.create!(
  status: "Accepted",
  user: corentin,
  friend: remi,
  )

corentin_laszlo = Friendship.create!(
  status: "Accepted",
  user: corentin,
  friend: laszlo,
  )

corentin_christophe = Friendship.create!(
  status: "Accepted",
  user: remi,
  friend: christophe,
  )

corentin_daphnee = Friendship.create!(
  status: "Pending",
  user: corentin,
  friend: daphnee,
  )

puts "Creating programs"

un_nouveau_depart = Program.create!(
  title: "Un nouveau départ",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 1,
  category: "Nourriture",
  )

# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

un_etat_desprit = Program.create!(
  title: "Un état d'esprit",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 1,
  )
# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

premieres_economies = Program.create!(
  title: "Mes premières économies",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 1,
  )
# premieres_economies = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

vivre_avec_saison = Program.create!(
  title: "Vivre avec les saisons",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Nourriture",
  position: 2,
  )
# vivre_avec_saison = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

puts "Creating users programs"

# programme complété
program_completed1 = UserProgram.create!(
  user: corentin,
  program: un_nouveau_depart,
  completed: true,
  )

# programme en cours
program_completed2 = UserProgram.create!(
  user: corentin,
  program: premieres_economies,
  completed: false,
  )

program_completed3 = UserProgram.create!(
  user: corentin,
  program: vivre_avec_saison,
  completed: false,
  )








