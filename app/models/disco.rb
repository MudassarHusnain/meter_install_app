class Disco < ApplicationRecord
    has_many :regions
    has_many :divisions, through: :regions
    has_many :sub_divisions, through: :divisions
    has_many :meters, through: :sub_divisions
end
