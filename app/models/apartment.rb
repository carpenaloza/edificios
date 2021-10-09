class Apartment < ApplicationRecord
  belongs_to :building

  validate :numeros_sin_duplicar


  validates :numero, presence:true
  validates :building_id, presence:true

  private
    def numeros_sin_duplicar
      encontrados = self.building.apartments.select {|depto|
      depto.numero == self.numero
      }
        if encontrados.count != 0
      
        self.errors.add(:error_duplicado, "El departamento ingresado ya existe")
        
        end

    end

end
