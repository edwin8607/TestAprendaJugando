class Centro < ActiveRecord::Base
  belongs_to :regional
  has_many :instructors
end
