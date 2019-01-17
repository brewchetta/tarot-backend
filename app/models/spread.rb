class Spread < ApplicationRecord
  belongs_to :user
  has_many :positions
  has_many :notes

  serialize :card_ids, Array
end
