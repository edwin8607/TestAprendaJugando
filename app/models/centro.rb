class Centro < ActiveRecord::Base
  belongs_to :regional
  has_many :instructors
  has_many  :programas

  validates :codigo, uniqueness: {message: "No se puede repetir"}
  validates :codigo, numericality: true
  validates :nombre, uniqueness: {message: "Este Centro de formacion ya existe"}

end
