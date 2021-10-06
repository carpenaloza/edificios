class Building < ApplicationRecord
  has_many :apartments

  validates :nombre, presence:true
  validates :direccion, presence:true
  validates :ciudad, presence:true

end
