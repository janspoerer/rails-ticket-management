class Userupload < ApplicationRecord
  belongs_to :ticket
  validates :cloud_identifier, presence: true
end
