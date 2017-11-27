class Admin < ActiveRecord::Base
 has_many :videojuego_admins
 has_many :videojuegos, through: :videojuego_admins
 validates :nombre, presence: { Message:"Debe existir un nombre de administrador"}
end
