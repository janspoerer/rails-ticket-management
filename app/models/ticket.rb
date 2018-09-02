class Ticket < ApplicationRecord
  belongs_to :user

  validates :max_time, presence: true
end
