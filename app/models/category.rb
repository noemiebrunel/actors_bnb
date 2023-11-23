class Category < ApplicationRecord
  has_and_belongs_to_many :actors
  COLLECTION = ['Événements', 'Famille', 'Travail', 'Amour', 'Accompagnement', 'Scolaire']
end
