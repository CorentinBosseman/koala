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
  avatar: File.open(Rails.root.join("db/fixtures/users/corentin_avatar.jpg")),
  )

remi = User.create!(
  pseudo: "remi",
  email: "remi@example.com",
  password: "password",
  avatar: File.open(Rails.root.join("db/fixtures/users/remi_avatar.jpg")),
  )

laszlo = User.create!(
  pseudo: "laszlo",
  email: "laszlo@example.com",
  password: "password",
  avatar: File.open(Rails.root.join("db/fixtures/users/remi_avatar.jpg")),
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
  avatar: File.open(Rails.root.join("db/fixtures/users/remi_avatar.jpg")),
  )

yann = User.create!(
  pseudo: "yann",
  email: "yann@example.com",
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
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/new-start.png"))
  )

la_santé_dabord = Program.create!(
  title: "La santé d'abord",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 3,
  category: "Nourriture",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/health-first.png"))
  )

vivre_avec_saison = Program.create!(
  title: "Vivre avec les saisons",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Nourriture",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/live-seasons.png"))
  )

un_etat_desprit = Program.create!(
  title: "Un état d'esprit",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 1,
  picture: File.open(Rails.root.join("db/fixtures/programs/un_etat_desprit.jpg")),
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/state-mind.png"))
  )

les_mains_dans_le_cambouis = Program.create!(
  title: "Les mains dans le cambouis",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/hands-in.png"))

  )
# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

la_guerre_au_plastique = Program.create!(
  title: "La guerre au plastique",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 3,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/plastic-war.png"))

  )
# un_nouveau_depart.picture = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

premieres_economies = Program.create!(
  title: "Mes premières économies",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/first-savings.png"))

  )
# premieres_economies = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

faisons_la_lumiere = Program.create!(
  title: "Faisons la lumière",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/light-on.png"))

  )
# premieres_economies = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

la_voiture_au_garage = Program.create!(
  title: "La voiture au garage",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 1,
  category: "Transport",
  )

mobilite_zero_carbone = Program.create!(
  title: "Mobilité zéro carbone",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Transport",
  position: 2,
  )

deplacements_alternatifs = Program.create!(
  title: "Déplacements alternatifs",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 3,
  category: "Transport",
  )



puts "Creating tasks"

task_1_un_etat_desprit = Task.create!(
  title: "Je colle un autocollant STOP-PUB sur ma boîte aux lettres",
  position: 1,
  program: un_etat_desprit,
  )

task_2_un_etat_desprit = Task.create!(
  title: "Je dématérialise mon courrier : relevés de compte, factures, etc",
  position: 2,
  program: un_etat_desprit,
  )

task_3_un_etat_desprit = Task.create!(
  title: "Je refuse les tickets de caisse et de carte bancaire",
  position: 3,
  program: un_etat_desprit,
  )

task_4_un_etat_desprit = Task.create!(
  title: "Je refuse les tickets de caisse et de carte bancaire",
  position: 4,
  program: un_etat_desprit,
  )

task_5_un_etat_desprit = Task.create!(
  title: "Je trie mes mails et me désabonne des newsletters et mailings commerciaux inutiles",
  position: 5,
  program: un_etat_desprit,
  )

task_6_un_etat_desprit = Task.create!(
  title: "J'achète une gourde et je privilégie l'eau du robinet",
  position: 6,
  program: un_etat_desprit,
  )

task_7_un_etat_desprit = Task.create!(
  title: "J'achète des cotons réutilisables et un oriculi",
  position: 7,
  program: un_etat_desprit,
  )

task_8_un_etat_desprit = Task.create!(
  title: "Je privilégie l'achat de savon solide",
  position: 8,
  program: un_etat_desprit,
  )


task_1_vivre_avec_saison = Task.create!(
  title: "J'achète un calendrier avec la saisonnalité des produits",
  position: 1,
  program: vivre_avec_saison,
  )

task_2_vivre_avec_saison = Task.create!(
  title: "Je ne mange pas de tomates en hiver",
  position: 2,
  program: vivre_avec_saison,
  )

task_3_vivre_avec_saison = Task.create!(
  title: "Je ne mange pas d'oranges en été",
  position: 3,
  program: vivre_avec_saison
)

puts "Creating users programs"

# programme complété
program_completed1 = UserProgram.create!(
  user: corentin,
  program: un_nouveau_depart,
  completed: true,
  )

# programme en cours
program_ongoing1 = UserProgram.create!(
  user: corentin,
  program: premieres_economies,
  completed: false,
  )

program_ongoing2 = UserProgram.create!(
  user: corentin,
  program: vivre_avec_saison,
  completed: false,
  )

UserTask.create!(user_program: program_ongoing2, task: task_1_vivre_avec_saison, completed: true)
UserTask.create!(user_program: program_ongoing2, task: task_2_vivre_avec_saison, completed: false)


puts "Creating Challenges"

# challenge à créer
arrete_fast_foods = Challenge.create!(
  title: "J'arrête les fast-foods",
  description: "McDonalds, KFC, Burger King, etc, je décide enfin de laisser tout ça derrière mois. Une cure aussi bonne pour l'estomac que le porte monnaie !",
  category: "Nourriture",
  position: 1,
  picture: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-fastfood.png"))

  )

# Challenge à refuser
achete_en_vrac = Challenge.create!(
  title: "J'achète en vrac",
  description: "Les sacs en plastique et autres emballages sont partout, acheter en vrac est l'un des premiers gestes pour en limiter l'impact !",
  category: "Déchets",
  position: 1,
  picture: File.open(Rails.root.join("db/fixtures/programs/iconspng/buy-bulk.png"))
  )

# Challenge terminé
lumieres_vertes = Challenge.create!(
  title: "Lumières vertes",
  description: "",
  category: "Energie",
  position: 1,
  picture: File.open(Rails.root.join("db/fixtures/programs/iconspng/hands-in.png"))

  )

# Challenge en cours
jarrete_lavion = Challenge.create!(
  title: "J'arrête l'avion",
  description: "",
  category: "Transport",
  position: 1,
  )

puts "Creating User Challenges + Challengers"

user_challenge_lumieres_vertes = UserChallenge.create!(
  start_date: Date.today - 2,
  end_date: Date.today,
  duration: 7,
  user: corentin,
  challenge: lumieres_vertes,
  )

Challenger.create!(
  user_challenge: user_challenge_lumieres_vertes,
  friend: corentin,
  status: "Accepté",
)


user_challenge_jarrete_lavion = UserChallenge.create!(
  start_date: Date.today - 14,
  end_date: Date.today,
  duration: 14,
  user: corentin,
  challenge: arrete_fast_foods,
  )

Challenger.create!(
  user_challenge: user_challenge_jarrete_lavion,
  friend: corentin,
  status: "Réussi",
)

user_challenge_jarrete_lavion_2 = UserChallenge.create!(
  start_date: Date.today - 14,
  end_date: Date.today + 14,
  duration: 28,
  user: corentin,
  challenge: arrete_fast_foods,
  )

Challenger.create!(
  user_challenge: user_challenge_jarrete_lavion_2,
  friend: corentin,
  status: "Accepté",
)

user_challenge_achete_en_vrac = UserChallenge.create!(
  start_date: Date.today,
  end_date: Date.today + 28,
  duration: 28,
  user: remi,
  challenge: achete_en_vrac,
  )

Challenger.create!(
  user_challenge: user_challenge_achete_en_vrac,
  friend: remi,
  status: "En attente",
)

Challenger.create!(
  user_challenge: user_challenge_achete_en_vrac,
  friend: corentin,
  status: "En attente",
)

