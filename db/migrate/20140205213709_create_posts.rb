class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :creator
      t.string :parent

      t.timestamps
    end
  end
end
