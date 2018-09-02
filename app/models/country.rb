class Country < ApplicationRecord
  has_many :companies

  validates :iso_alpha_2_code, presence: true
  validates :iso_alpha_3_code, presence: true
  validates :name, presence: true
end
