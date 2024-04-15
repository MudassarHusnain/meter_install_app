class Region < ApplicationRecord
  belongs_to :disco
  has_many :divisions
  has_many :sub_divisions, through: :divisions
  has_many :meters, through: :sub_divisions
end
