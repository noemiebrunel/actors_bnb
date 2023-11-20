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
oscar = User.create!(username: "oscar", email: "oscar@mail.com", password: "azerty")
nicolas = User.create!(username: "nicolas", email: "nicolas@mail.com", password: "azerty")
guigui = User.create!(username: "guigui", email: "guigui@mail.com", password: "azerty")
jef = User.create!(username: "jef", email: "jef@mail.com", password: "azerty")
thomas = User.create!(username: "thomas", email: "thomas@mail.com", password: "azerty")
marion = User.create!(username: "marion", email: "marion@mail.com", password: "azerty")

p "users done"
p "there are #{User.count} users"

brad_pitch = Actor.create!(username: "brad pitch", mail: "brad@mail.com", description: "je suisacteur depuis 30 ans", price: 50, user_id: juan.id)
shwarzminiburne = Actor.create!(username: "shwarzminiburne", mail: "shwarz@mail.com", description: "il y a 10 ans j'ai fait une apparition dans Joséphine Ange Gardien", price: 1000, user_id: noemie.id)
constantin_le_tarniner = Actor.create!(username: "constantin", mail: "letartiner@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: oscar.id)
bretzel_margintop = Actor.create!(username: "bretzel_margintop", mail: "bretzel@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: cyril.id)
gorge_clowné = Actor.create!(username: "orge_clooner", mail: "jorge@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: thomas.id)
samousa_jackson = Actor.create!(username: "samouelo_jasson", mail: "samouelo@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: jef.id)
jean_paul_belle_cascades = Actor.create!(username: "jean paul", mail: "jean-paul@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: guigui.id)
cheum_conneries= Actor.create!(username: "cheum", mail: "cheum@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: marion.id)
al_pas_de_chez_nous= Actor.create!(username: "al", mail: "al@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 10, user_id: nicolas.id)

p "actors done"
