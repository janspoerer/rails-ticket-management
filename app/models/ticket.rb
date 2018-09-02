class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments

  validates :max_time, presence: true
  validates :description, presence: true
end
