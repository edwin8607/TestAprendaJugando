class Programa < ActiveRecord::Base
  has_many :centroprogramas
  has_many :centros, through: :centroprogramas

end
