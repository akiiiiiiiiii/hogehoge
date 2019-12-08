class Book < ApplicationRecord
  validates :title, presence: true

  has_many :impressions, dependent: :destroy
end
