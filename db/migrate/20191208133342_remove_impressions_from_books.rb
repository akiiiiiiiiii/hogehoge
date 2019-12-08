class RemoveImpressionsFromBooks < ActiveRecord::Migration[5.2]
  def up
    remove_column :books, :impressions
  end

  def down
    add_column :books, :impressions, :integer
  end

end
