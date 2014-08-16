class Equipo < ActiveRecord::Base
  belongs_to :cliente
  has_many :tickets
end
