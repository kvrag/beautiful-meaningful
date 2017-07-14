class Feeling < ActiveRecord::Base
  has_many :activities
  has_many :spins
end
