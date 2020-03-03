class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.references :user,  index: true, foreign_key: true
      t.references :book,  index: true, foreign_key: true

      t.timestamps
    end
  end
end
