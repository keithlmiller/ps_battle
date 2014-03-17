class AddImageColumnsToBattles < ActiveRecord::Migration
  def self.up
    add_attachment :battles, :image
  end
  def self.down
    remove_attachment :battles, :image
  end
end
