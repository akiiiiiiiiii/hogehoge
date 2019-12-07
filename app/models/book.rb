class Book < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :impressions
end
