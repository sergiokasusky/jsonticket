class Cliente < ActiveRecord::Base
  has_many :equipos
  has_many :tickets, through: :equipos
end
