class Programa < ActiveRecord::Base
  belongs_to :centro
  has_many :fichas
end
