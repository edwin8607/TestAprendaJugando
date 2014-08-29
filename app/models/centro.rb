class Centro < ActiveRecord::Base
  belongs_to :regional
  has_many :instructors

  validates :codigo, uniqueness: {message: "No se puede repetir"}
  validates :codigo, numericality: true

end
