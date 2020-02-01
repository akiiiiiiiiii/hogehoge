class AddColumnUserBooksDeletedAt < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :deleted_at, :datetime
  end
end
