class Ticket < ApplicationRecord
  belongs_to :user, optional: true

  validates :max_time, presence: true
  validates :description, presence: true
end
