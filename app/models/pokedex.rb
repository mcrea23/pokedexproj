class Pokedex < ActiveRecord::Base
  belongs_to :trainers
  has_many :trainers
end
