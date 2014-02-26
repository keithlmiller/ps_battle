class AddForeignToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :battle_id, :integer
  end
end
