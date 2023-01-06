class ItemParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :item
  validates_uniqueness_of :participant_id, :scope => :item_id
end
