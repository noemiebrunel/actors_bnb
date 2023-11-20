# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
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

brad_pitch = Actor.create!(username: "brad pitch", email: "brad@mail.com", description: "je suisacteur depuis 30 ans", price: 50, user_id: juan)
shwarzminiburne = Actor.create!(username: "shwarzminiburne", email: "shwarz@mail.com", description: "il y a 10 ans j'ai fait une apparition dans Joséphine Ange Gardien", price: 1000, user_id: noemie)
constantin_le_tarniner = Actor.create!(username: "constantin", email: "letartiner@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: oscar)
bretzel_margintop = Actor.create!(username: "bretzel_margintop", email: "bretzel@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: cyril)
gorge_clowné = Actor.create!(username: "orge_clooner", email: "jorge@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: thomas)
samousa_jackson = Actor.create!(username: "samouelo_jasson", email: "samouelo@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: jef)
jean_paul_belle_cascades = Actor.create!(username: "jean paul", email: "jean-paul@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: guigui)
cheum_conneries= Actor.create!(username: "cheum", email: "cheum@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: marion)
al_pas_de_chez_nous= Actor.create!(username: "al", email: "al@mail.com", description: "je suisacteur depuis 30 ans j'ai les plus gros biceps du marché de wazemmes", price: 0.50, user_id: nicolas)
