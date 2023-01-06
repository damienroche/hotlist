class Item < ApplicationRecord
  belongs_to :list
  has_many :item_participants
  has_many :participants, through: :item_participants
end
