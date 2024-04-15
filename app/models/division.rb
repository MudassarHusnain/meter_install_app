class Division < ApplicationRecord
    belongs_to :region
    has_many :sub_divisions
    has_many :meters, through: :sub_divisions
end
