class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :purpose
  belongs_to :user

  with_options presence: true do
    validates :name
    validates :purpose_id, numericality: { other_than: 0 }
  end
  
end
