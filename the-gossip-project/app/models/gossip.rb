class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossiptags
  has_many :tags, through: :gossiptags
end
