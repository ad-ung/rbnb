# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# villa

villas = [
  "Casa Ivana",
  "Villa Estelle",
  "The Beach House",
  "Villa Inesta",
  "Lake House Villa",
  "Villa Carlotta",
  "Tropical Oasis",
  "Villa Karizma"
]


addresses = [
  "1041 northeast 83RD st",
  "1050 south shore drive",
  "540 grand concourse",
  "2341 keystone blvd",
  "13000 coronado ln",
  "1240 northeast 82 st",
  "3988 northeast 194th",
  "16465 northeast 32nd ave"
]

descriptions = [
  "Petite Oasis de ville à l’allure tropicale, cette splendide villa avec piscine est une perle rare sur la baie. Elle offre une qualité de vie exceptionnelle avec ses chambres et un grand terrain. L’ensemble de la terrasse est ouvert et aéré, les fenêtres laissent entrer une lumière naturelle exceptionnelle. L’intérieur comprend de nombreux meubles & plans en bois massif, ainsi que du granit pour la cuisine. Des portes françaises vous conduisent à travers le patio couvert jusqu’à la piscine entourée de végétation tropicale.",
  "Très belle villa au bord de l’eau avec une vue exceptionnelle sur la ville de Miami. Vendue à très bon prix, cette maison moderne entièrement rénovée dispose des sols en Terrazzo, d’une piscine à débordement, d’un quai avec ascenseur pour bateau (jusqu’à 36 pieds de longs) en front de mer. Au sein d’une copropriété tout confort, elle bénéficie des services prestigieux comme un accès à des courts de Tennis, un terrain de golf et de nombreux espaces verts. Plus d’informations sur demande.",
  "Havre de paix formidable et rare à Miami… Construite avec goût, elle est constituée de nombreux ouvrages en bois massif et pierres apparentes. Villa ombinant des éléments d’îlots traditionnels et rustiques pour créer une maison fonctionnelle et stylée, étonnante en Floride ! Planchers de bois, cuisine gastronomique, suite de maître de luxe, luminaires haut de gamme, portes françaises, piscine tropicale, piscine “Chicago” en brique… Cette villa est une exception, à voir absolument ! Plus de photos et d’informations sur demande.",
  "Très belle Villa au bord de l’eau à Miami ! Profitant d’un accès privilégié à l’océan grâce à un ponton sur un canal de la baie de Miami. Spacieuse, cette villa offre un confort incroyable. Avec une piscine, un sauna ainsi qu’une très belle terrasse (patio) offrant une vue splendide pour des moments agréables. Un bar extérieur est également à disposition. Deux garages et un parking pour 6 voitures. À quelques minutes de marche de Bal Harbour, ses plages et centres commerciaux. Plus de photos et d’informations sur demande.",
  "Cette sublime villa de luxe est équipée d'un grand espace a été conçu pour accueillir de nombreux invités : un double séjour ainsi qu’une salle à manger et une cuisine toute équipée avec ilot central, espace dinatoire et matériel en acier inoxydable. Vous trouverez aussi un autre salon cloisonné pour plus d’intimité. À l’extérieur, une magnifique piscine avec fontaine et mosaïque. Enfin, un ponton a été conçu pour avoir un accès direct à la mer. Cette villa est située au bout d’une impasse ce qui vous assure un calme royal ! ",
  "Cette sublime villa est située à seulement 200 mètres de la baie de Miami, au bout d’une impasse pour plus de tranquillité. La cuisine toute équipée avec bar est ouverte sur une grande salle à manger. Un premier séjour pour recevoir et un autre donnant accès direct à la magnifique piscine. Une très grande terrasse entoure la piscine dont une partie est ombragée. L’extérieur possède aussi un ponton pour un accès direct à la mer. Le tout décoré avec style (carrelage en porcelaine, plan de travail en marbre…).",
  "Cette impressionnante villa des pièces à la pointe de la technologie. Elle comporte également une cuisine toute équipée avec ilot central. Celle-ci est ouverte sur une belle salle à manger. De nombreux espaces de détente sont prévus : un espacé télévisé, un séjour, un coin bibliothèque à l’étage. Le tout étant décoré avec soin : marbre au sol, lustres, aquarium, balcon… A l’extérieur, une belle piscine avec un patio ombragé. Cette villa est située dans une résidence sécurisée 24h/24, à quelques pas de la plage.",
  "Magnifique villa de luxe au bord de l’eau. Une grande cuisine toute équipée possède un ilot central imposant avec plan de travail en granit. Une grande salle à manger est prévue pour accueillir de nombreux convives. A l’entrée, un grand séjour et un bureau fermé. Double vitrage partout, air conditionné, portes en bois massif… Dehors, une sublime piscine moderne avec terrasse ombragée, salon extérieur et ponton au bord de l’eau. Un garage pour une voiture, un dressing et une buanderie complètent ce bien."
]

ppd = [671, 591, 472, 820, 1109, 581, 492, 720]

villas.each_with_index do |villa, i|
  Villa.create!(name: villa, city: "Miami", description: descriptions[i], address: addresses[i], price_per_day: ppd[i])
end

# user

User.create!(email: "johndoe@gmail.com", pseudo: "John_Doe", password: "topsecret")
User.create!(email: "cath02@gmail.com", pseudo: "Cath_02", password: "topsecret")
User.create!(email: "kanita@gmail.com", pseudo: "Kanita", password: "topsecret")
User.create!(email: "maxou99@gmail.com", pseudo: "Maxou99", password: "topsecret")
User.create!(email: "aladdin@gmail.com", pseudo: "Aladdin", password: "topsecret")
User.create!(email: "pierre_martin@gmail.com", pseudo: "Pierre_Martin", password: "topsecret")

# review

reviews = [
 "Son emplacement était idéal pour découvrir Miami. Une villa de rêve tout simplement !",
 "Tout était parfait...",
 "Proche de la mer, équipements au top, je conseille !",
 "Un petit coin de paradis, propiétaire aux petits soins, nous avons passé un séjour fabuleux dans cette villa.",
 "Les chambres sont grandes, le salon est grandiose, le tout les pieds dans l'eau. Que demander de plus ?",
 "Très jolie villa, décorée avec soin et équipée d'une piscine, d'un terrain de tennis, et d'un minigolf.",
 "Excellent !",
 "Exceptionnel !",
 "Superbe !",
 "Je recommande"
]

villas.each do |villa|
  3.times do |i|
    r = Review.new(content: reviews.sample, user_id: rand(1..6))
    r.villa = Villa.find_by(name: villa)
    r.save!
  end
end
