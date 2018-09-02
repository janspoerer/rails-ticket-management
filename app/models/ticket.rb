class Ticket < ApplicationRecord
  belongs_to :user

  validates :max_time, presence: true
  validates :description, presence: true
end
