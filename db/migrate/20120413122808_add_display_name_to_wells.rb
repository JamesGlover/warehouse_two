class AddDisplayNameToWells < ActiveRecord::Migration
  def self.up
    add_column :wells, :display_name, :string
  end

  def self.down
    remove_column :wells, :display_name
  end
end
