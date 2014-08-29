class Instructor < ActiveRecord::Base
  belongs_to :centro

  # Validar que los atributos sean obligatorios
  validates :nombre, :presence => true
  validates :apellido, :presence => true
  validates :titulo, :presence => true
end
