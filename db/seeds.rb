# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Actor.destroy_all
User.destroy_all
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
juan = User.create!(username: "Juan", email: "juan@mail.com", password: "azerty")
noemie = User.create!(username: "Noemie", email: "nono@mail.com", password: "azerty")
cyril = User.create!(username: "Cyril", email: "cyril@mail.com", password: "azerty")


p "users done"
p "there are #{User.count} users"

brad_pitch = Actor.create!(username: "Jean-Pierre Triste", mail: "brad@mail.com", description: "Je suis spécialisé en figuration dans les moments difficiles : hôpital, cimetière, Ehpad. Je suis compatissant et souriant, j’épaule les familles dans le besoin.", price: 50, user_id: juan.id, category: "Accompagnement")

shwarzminiburne = Actor.create!(username: "Stéphanie Cotillon", mail: "shwarz@mail.com", description: "J’adore les mariages ! Je suis une vraie folle quand je m’élance sur le dancefloor. Spécialisée en Madison, je sais aussi endiabler les Démons de Minuit.", price: 1000, user_id: noemie.id, category: "Evénement Famille Amour")

constantin_le_tarniner = Actor.create!(username: "John Gendreidéal", mail: "letartiner@mail.com", description: "Vos parents ont toujours rêvé de vous voir avec un vétérinaire, doux, aimant et assez musclé pour soulever une vache ? Je suis l’homme de la situation. Je peux aussi jouer le gendre horrible pour contrarier belle-maman.", price: 10, user_id: juan.id, category: "Famille Amour")

bretzel_margintop = Actor.create!(username: "Steve Travail", mail: "bretzel@mail.com", description: "Besoin d’une recommandation d’un ancien patron pour obtenir le stage de tes rêves ? Je me ferai une joie de servir de référence lors du call. Je sais prendre des voix de développeur, commercial, mais aussi de banquier.", price: 10, user_id: cyril.id, category: "Travail")

gorge_clowné = Actor.create!(username: "Coline Love", mail: "jorge@mail.com", description: "Ton date prend l’eau, et tu veux prendre le large ? Je serai l’amie qui t’aide à te sortir des dates claqués. Appelle-moi et je déboule avec une urgence top secrete.", price: 10, user_id: noemie.id, category: "Amour Accompagnement")

samousa_jackson = Actor.create!(username: "Magali Pilierdebar", mail: "samouelo@mail.com", description: "Vous venez d’ouvrir un établissement nocture ou diurne mais vous peinez à attirer du monde ? Mes copines et moi on viendra mettre le feu sur la terrasse : aucun badaud ne résistera à l’envie de s’arrêter pour boire un verre dans le nouveau bar à la mode.", price: 10, user_id: cyril.id, category: "Travail Accompagnement")

jean_paul_belle_cascades = Actor.create!(username: "Henri Prof", mail: "jean-paul@mail.com", description: "Aïe Aïe... Bientôt les partiels, mais tu as oublié d’aller en cours à cause des soirées BDE ? Tant mieux ! J’ai redoublé 14 fois et connais le programme de toutes les filières par coeur. Je passe les partiels à ta place. Offre spéciale : 50% remboursés sur la première commande avec le code #RATTRAPAGES", price: 10, user_id: juan.id, category: "Scolaire")

cheum_conneries= Actor.create!(username: "Michel PLanteverte", mail: "", description: "Elle arrive : la soirée d’entreprise de Noël. 3h à cirer des pompes et à serrer des mains en solo, c’est soulant. Je te propose de jouer ta nouvelle conquête : ensemble, vidons le bar et remplissons l’esprit de tes collègues de souvenirs impérissables.", price: 10, user_id: noemie.id, category: "Travail Evénement")

al_pas_de_chez_nous= Actor.create!(username: "Christian Synthé", mail: "", description: "Je suis un habitué des plateaux télé : après de nombreuses apparitions dans des sitcom comme Joséphine Ange Gardien, j'ai fait mes armes dans Plus Belle la Vie.", price: 10, user_id: cyril.id, category: "Evénement Travail Amour Accompagnement Famille")

p "actors done"
