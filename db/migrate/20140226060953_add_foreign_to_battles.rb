class AddForeignToBattles < ActiveRecord::Migration
  def change
    add_column :battles, :post_id, :integer
  end
end
