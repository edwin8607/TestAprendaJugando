class Instructor < ActiveRecord::Base
  belongs_to :centro

  # Validar que los atributos sean obligatorios
  validates :nombre, :presence => true
  validates :apellido, :presence => true
  validates :cedula, :presence => true
  validates :email, :presence => true
  validates :titulo, :presence => true

  # Validar atributos unicos

  validates :cedula, uniqueness: { message: "Este numero de identificacion ya existe"}
  validates :email, uniqueness: { message: "Esta direccion email ya existe"}

 # validar formato de un email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	message: 'Formato no valido' }

	# Validar formato de longitud
	validates :cedula, length: { minimum: 5, maximum: 30 }
	validates :nombre, :apellido, length: { minimum: 5, maximum: 50 }

	# Valida si un atributo es numerico
	validates :cedula, numericality: true

end
