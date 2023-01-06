class ItemParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :item
end
