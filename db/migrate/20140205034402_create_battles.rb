class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.string :name
      t.string :description
      t.string :creator

      t.timestamps
    end
  end
end
