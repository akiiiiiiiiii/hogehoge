class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.string :content
      t.datetime :deleted_at
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
