class AddAncestryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :ancestry, :integer
    add_index :posts, :ancestry
  end
end
