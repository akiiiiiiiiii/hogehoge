class Impression < ApplicationRecord
  ratyrate_rateable "rate"
  belongs_to :user
  belongs_to :book
end
