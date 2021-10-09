class Building < ApplicationRecord
  has_many :apartments

  before_validation(:cambiar_a_mayusculas)

  validates :nombre, presence:true
  validates :direccion, uniqueness:true
  validates :direccion, presence:true
  validates :ciudad, presence:
  
  private
    def cambiar_a_mayusculas
        puts self.nombre = self.nombre.upcase
        puts self.direccion = self.direccion.upcase
        puts self.ciudad = self.ciudad.upcase
    end

end
