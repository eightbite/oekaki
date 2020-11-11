class Purpose < ActiveHash::Base

  self.data = [
    {id: 0, name: '--'}, {id: 1, name: 'まったり'}, {id: 2, name: '本気で'}, 
    {id: 3, name: '身内'}
  ]

  include ActiveHash::Associations
  has_many :rooms
end