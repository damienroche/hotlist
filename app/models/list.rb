class List < ApplicationRecord
  validates_presence_of :title
  has_many :items, dependent: :destroy
end
