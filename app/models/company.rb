class Company < ApplicationRecord
  has_many :users
  belongs_to :country, optional: true
end
