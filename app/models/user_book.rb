class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
  enum status: %i[lending borrow lend]
end
