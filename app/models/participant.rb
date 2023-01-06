class Participant < ApplicationRecord
  validates_presence_of :name
  belongs_to :list
  has_many :item_participants
  has_many :items, through: :item_participants
end
