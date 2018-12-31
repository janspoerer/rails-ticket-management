class Ticket < ApplicationRecord
  belongs_to :user #, optional: true
  has_many :comments

  validates :title, presence: true
  validates :description, presence: true
  validates :max_time, presence: true
end
