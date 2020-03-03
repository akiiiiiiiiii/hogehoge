class Book < ApplicationRecord
  validates :title, presence: true

  has_many :impressions, dependent: :destroy

  has_many :users, through: :user_books
  has_many :user_books
end
