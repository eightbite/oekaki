class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :purpose

  belongs_to :user

  validates :name, presence: true
  validates :purpose_id, numericality: { other_than: 0 }
  
end
