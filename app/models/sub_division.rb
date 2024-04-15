class SubDivision < ApplicationRecord
  belongs_to :division
  has_many :meters

end
