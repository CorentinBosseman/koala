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
  avatar: File.open(Rails.root.join("db/fixtures/users/laszlo.jpeg")),
  )
# laszlo.avatar = File.open(Rails.root.join("db/fitures/flats/six_flat_image.jpg"))

christophe = User.create!(
  pseudo: "christophe",
  email: "christophe@example.com",
  password: "password",
  avatar: File.open(Rails.root.join("db/fixtures/users/christophe.jpg")),
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
  avatar: File.open(Rails.root.join("db/fixtures/users/yann.jpg")),

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
  user: corentin,
  friend: christophe,
  )

corentin_yann = Friendship.create!(
  status: "Pending",
  user: yann,
  friend: corentin,
  )

puts "Creating programs"

#FOOD
un_nouveau_depart = Program.create!(
  title: "Un nouveau départ",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 1,
  category: "Nourriture",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/new-start.png"))
  )

vivre_avec_saison = Program.create!(
  title: "Vivre avec les saisons",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Nourriture",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/live-seasons.png"))
  )

la_santé_dabord = Program.create!(
  title: "La santé d'abord",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 3,
  category: "Nourriture",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/health-first.png"))
  )

#WASTE
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

la_guerre_au_plastique = Program.create!(
  title: "La guerre au plastique",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Déchets",
  position: 3,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/plastic-war.png"))
  )

#ENERGIE
premieres_economies = Program.create!(
  title: "Mes premières économies",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/first-savings.png"))
  )

faisons_la_lumiere = Program.create!(
  title: "Faisons la lumière",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Energie",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/light-on.png"))
  )

autonomie = Program.create!(
  title: "Viser l'autonomie",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 3,
  category: "Energie",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/water-wasting.png")),
  )
#TRANSPORT
la_voiture_au_garage = Program.create!(
  title: "La voiture au garage",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 1,
  category: "Transport",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/car-garage.png"))
  )

mobilite_zero_carbone = Program.create!(
  title: "Mobilité zéro carbone",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  category: "Transport",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/fair-mobility.png"))
  )

deplacements_alternatifs = Program.create!(
  title: "Déplacements alternatifs",
  description: "Apprenez les bases à travers ce programme de mise à niveau ! De simples taches vous permettrons de poser de solides fondations et implémenter de nouvelles habitudes.",
  position: 3,
  category: "Transport",
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/alternative-mobility.png"))
  )

puts "Creating tasks"

# FOOD
task_1_un_nouveau_depart = Task.create!(
  title: "Je ne fais pas les courses le ventre vide",
  position: 1,
  program: un_nouveau_depart,
  )

task_2_un_nouveau_depart = Task.create!(
  title: "J'arrête les contenants de plastique pour faire chauffer les aliments au micro-ondes",
  position: 2,
  program: un_nouveau_depart,
  )

task_3_un_nouveau_depart = Task.create!(
  title: "J'utilise des contenants en verre pour conserver les aliments au réfrigérateur",
  position: 3,
  program: un_nouveau_depart,
  )

task_4_un_nouveau_depart = Task.create!(
  title: "Je privilégie les produits frais au détriment des plats préparés",
  position: 4,
  program: un_nouveau_depart,
  )

task_5_un_nouveau_depart = Task.create!(
  title: "Je privilégie les produits frais sur le territoire national et les pays voisins",
  position: 5,
  program: un_nouveau_depart,
  )

task_6_un_nouveau_depart = Task.create!(
  title: "Je déchiffre les codes œufs :
  0 = élevage en plein air « BIO »
  1 = élevage en plein air
  2 = élevage intensif au sol
  3 = élevage intensif en batterie",
  position: 6,
  program: un_nouveau_depart,
  )

task_7_un_nouveau_depart = Task.create!(
  title: "Je déchiffre les codes œufs :
  0 = élevage en plein air « BIO »
  1 = élevage en plein air
  2 = élevage intensif au sol
  3 = élevage intensif en batterie",
  position: 7,
  program: un_nouveau_depart,
  )

task_8_un_nouveau_depart = Task.create!(
  title: " Je fais la différence entre : « A consommer jusqu’au » et « A consommer de préférence avant le ... » ",
  position: 8,
  program: un_nouveau_depart,
  )

task_9_un_nouveau_depart = Task.create!(
  title: "J'arrête l'utilisation d'huile de palme",
  position: 9,
  program: un_nouveau_depart,
  )

task_10_un_nouveau_depart = Task.create!(
  title: "Je fais le point sur les différents labels",
  position: 10,
  program: un_nouveau_depart,
  )

task_1_vivre_avec_saison = Task.create!(
  title: "J'achète un calendrier avec la saisonnalité des produits",
  position: 1,
  program: vivre_avec_saison,
  )

task_2_vivre_avec_saison = Task.create!(
  title: "J'évite d'acheter des produits frais venant d'un pays lointain",
  position: 2,
  program: vivre_avec_saison,
  )

task_3_vivre_avec_saison = Task.create!(
  title: "Je ne mange pas d'oranges en été",
  position: 3,
  program: vivre_avec_saison
)

# WASTE
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
  title: "Je trie mes mails et me désabonne des newsletters et mailings commerciaux inutiles",
  position: 4,
  program: un_etat_desprit,
  )

task_5_un_etat_desprit = Task.create!(
  title: "Je limite les impressions même au travail et si nécessaire je privilégie le noir & blanc et le recto-verso",
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

# ENERGIE
task_1_premieres_economies = Task.create!(
  title: "J'utilise les heures creuses pour faire fonctionner les appareils électroménagers",
  position: 1,
  program: premieres_economies,
  )

task_2_premieres_economies = Task.create!(
  title: "Je fais attention au niveau de consommation d’énergie de l’électroménager lorsque j'en achète ('A' étant le plus économe)",
  position: 2,
  program: premieres_economies,
  )

task_3_premieres_economies = Task.create!(
  title: "J'éteins mes appareils au lieu de les laisser en veille",
  position: 3,
  program: premieres_economies,
  )

task_4_premieres_economies = Task.create!(
  title: "Je pense à éteindre les lumières lorsque je ne suis pas dans la pièce",
  position: 4,
  program: premieres_economies,
  )

task_5_premieres_economies = Task.create!(
  title: "J'ajuste la température de mon réfrigérateur et de mon congélateur (température idéale: 4°C, et – 18°C pour un congélateur)",
  position: 5,
  program: premieres_economies,
  )

task_6_premieres_economies = Task.create!(
  title: "Je m'équipe d'ampoules basse consommation ou LEDs qui consomment 5 fois moins d’électricité et durent 10 fois plus longtemps",
  position: 6,
  program: premieres_economies,
  )

task_7_premieres_economies = Task.create!(
  title: "J'installe le chaud loin du froid ! Plus le réfrigérateur sera éloigné des appareils de cuisson, moins il consommera d’énergie",
  position: 7,
  program: premieres_economies,
  )

task_8_premieres_economies = Task.create!(
  title: "J'utilise une bouilloire électrique, car elle consomme moitié moins d’énergie que la cuisinière pour faire bouillir l’eau",
  position: 8,
  program: premieres_economies,
  )

task_9_premieres_economies = Task.create!(
  title: "J'utilise un couvercle à casserole pour porter l'eau à ébullition",
  position: 9,
  program: premieres_economies,
  )

task_10_premieres_economies = Task.create!(
  title: "La cuisson d’aliments congelés nécessite plus d’énergie, je les fais dégeler au préalable",
  position: 10,
  program: premieres_economies,
  )

# TRANSPORT

task_1_la_voiture_au_garage = Task.create!(
  title: "J'adopte une conduite économique",
  description: "Adopter une conduite économique permet d'économiser jusqu'à 30% de carburant comparé à une conduite sportive. Autant que possible il faut éviter les coups de freins et accélérations brusques",
  position: 1,
  program: la_voiture_au_garage,
  )

task_2_la_voiture_au_garage = Task.create!(
  title: "J'évite la surconsommation de carburant'",
  description: "Il faut éviter d'ouvrir ses fenêtres trop souvent sous peine d'augmenter la prise au vent du véhicule et donc sa consommation. Il est également plus économique de couper le moteur au-delà de 30 secondes d’arrêt",
  position: 2,
  program: la_voiture_au_garage,
  )

task_3_la_voiture_au_garage = Task.create!(
  title: "Je gonfle mes pneus",
  description: "un pneu sous-gonflé augmente considérablement la consommation d'un véhicule. Votre portefeuille et surtout la planète vous remercierons.",
  position: 3,
  program: la_voiture_au_garage,
  )

task_4_la_voiture_au_garage = Task.create!(
  title: "Je me procure un vélo ou une trotinette (d'occasion de préférence)",
  position: 4,
  program: la_voiture_au_garage,
  )

task_5_la_voiture_au_garage = Task.create!(
  title: "Je m'inscris sur un site de covoiturage",
  position: 5,
  program: la_voiture_au_garage,
  )

task_6_la_voiture_au_garage = Task.create!(
  title: "Je privilégie les trajets en vélo ou en bus",
  position: 6,
  program: la_voiture_au_garage,
  )

task_7_la_voiture_au_garage = Task.create!(
  title: "Si je ne peux pas me passer de la voiture, je privilégie l'intermodalité",
  position: 7,
  program: la_voiture_au_garage,
  )

task_8_la_voiture_au_garage = Task.create!(
  title: "J'organise des journées covoiturage avec mes collégues pour me rendre au travail",
  description: "Renseignez-nous auprès du comité d’entreprise pour savoir s'il adhère à un plan de déplacement inter-entreprises (PDIE) pour multiplier vos chances de trouver des partenaires de covoiturage pour vos déplacements quotidiens",
  position: 8,
  program: la_voiture_au_garage,
  )

puts "Creating Challenges"

# challenge Nourriture
jarrete_soda = Challenge.create!(
  title: "J'arrête les sodas",
  description: "Les sodas sont des produits industriels et transformés très peu respectueux de l'environnement, privélégions l'eau !",
  category: "Nourriture",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-soda.png")),
  )

arrete_fast_foods = Challenge.create!(
  title: "J'arrête les fast-foods",
  description: "McDonalds, KFC, Burger King, etc, je décide enfin de laisser tout ça derrière mois. Une cure aussi bonne pour l'estomac que le porte monnaie !",
  category: "Nourriture",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-fastfood.png")),
  )

jarrete_plats_prepares = Challenge.create!(
  title: "J'arrête les plats préparés",
  description: "Les plats préparés sont des produits industriels et transformés très peu respectueux de l'environnement, privélégions les plats faits maison !",
  category: "Nourriture",
  position: 3,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-pizza.png")),
  )

# Challenge Dechets
jarrete_plastique = Challenge.create!(
  title: "J'arrête les bouteilles en plastique",
  description: "Les bouteilles plastiques sont l'une des causes du développement d'un continent plastique, passons à l'eau du robinet !",
  category: "Déchets",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-plastic-bottle.png")),
  )

achete_produits_neufs = Challenge.create!(
  title: "J'arrête les produits neufs",
  description: "Bien souvent, nous jetons des produits facilement réparables, pensons à réparer avant d'acheter et si nécessaire privilégions l'occasion !",
  category: "Déchets",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-new.png")),
  )

achete_en_vrac = Challenge.create!(
  title: "J'achète en vrac",
  description: "Les sacs en plastique et autres emballages sont partout, acheter en vrac est l'un des premiers gestes pour en limiter l'impact !",
  category: "Déchets",
  position: 3,
  picture: File.open(Rails.root.join("db/fixtures/challenges/bulk.png")),
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/buy-bulk.png")),
  )

faire_savon = Challenge.create!(
  title: "Je fais mes savons",
  description: "Faire ses produits ménagers et un acte simple et économe autant pour vos poches que l'environnement !",
  category: "Déchets",
  position: 4,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/own-soap.png")),

  )

# Challenge Energie
exces_electriques = Challenge.create!(
  title: "Excès électriques",
  description: "De simples gestes peuvent à la fois réduire notre facture électrique et environnemental, pensez à éteindre la lumière et vos multiprises !",
  category: "Energie",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/energy-excess.png")),
  )

reduire_chauffage = Challenge.create!(
  title: "Réduire son chauffage",
  description: "Réduire de quelques degrés notre chauffage peut à la fois réduire nos factures et notre impact environnemental !",
  category: "Energie",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/reduce-heater.png")),
  )

gachis_deau = Challenge.create!(
  title: "Le gachis d'eau",
  description: "Un français consomme des centaines de litres d'eau par jour directement, des milliers indirectement !",
  category: "Energie",
  position: 3,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/water-wasting.png")),
  )
# Challenge transport
jarrete_lavion = Challenge.create!(
  title: "J'arrête l'avion",
  description: "L'avion est l'un des moyens de transports des plus polluants, je vais donc limiter mes déplacements ou privilégier le train !",
  category: "Transport",
  position: 1,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/stop-plane.png")),

  )

challenge_velo = Challenge.create!(
  title: "Je prends le vélo",
  description: "Pour les petits trajets, privilégions le vélo et si possible pour aller au travail !",
  category: "Transport",
  position: 2,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/take-bike.png")),
  )

mes_10000_pas = Challenge.create!(
  title: "Mes 10 000 pas",
  description: "10000 pas par jour",
  category: "Transport",
  position: 3,
  icon: File.open(Rails.root.join("db/fixtures/programs/iconspng/walking.png")),
  )

puts "Creating User Challenges + Challengers"

user_challenge_exces_electriques = UserChallenge.create!(
  start_date: Date.today - 2,
  end_date: Date.today - 1,
  duration: 28,
  user: corentin,
  challenge: exces_electriques,
  )

Challenger.create!(
  user_challenge: user_challenge_exces_electriques,
  friend: corentin,
  status: "Accepté",
)


user_challenge_jarrete_soda = UserChallenge.create!(
  start_date: Date.today - 2,
  end_date: Date.today - 1,
  duration: 7,
  user: corentin,
  challenge: jarrete_soda,
  )

Challenger.create!(
  user_challenge: user_challenge_jarrete_soda,
  friend: corentin,
  status: "Réussi",
)

user_challenge_jarrete_fast_foods = UserChallenge.create!(
  start_date: Date.today - 14,
  end_date: Date.today,
  duration: 28,
  user: corentin,
  challenge: arrete_fast_foods,
  )

Challenger.create!(
  user_challenge: user_challenge_jarrete_fast_foods,
  friend: corentin,
  status: "Accepté",
)

Challenger.create!(
  user_challenge: user_challenge_jarrete_fast_foods,
  friend: laszlo,
  status: "Accepté",
)

Challenger.create!(
  user_challenge: user_challenge_jarrete_fast_foods,
  friend: christophe,
  status: "Accepté",
)

user_challenge_jarrete_lavion_2 = UserChallenge.create!(
  start_date: Date.today - 14,
  end_date: Date.today + 14,
  duration: 28,
  user: corentin,
  challenge: jarrete_lavion,
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
  status: "Accepté",
)

Challenger.create!(
  user_challenge: user_challenge_achete_en_vrac,
  friend: corentin,
  status: "En attente",
)
