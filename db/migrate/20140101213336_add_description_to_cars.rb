class AddDescriptionToCars < ActiveRecord::Migration
  def up
    add_column :cars, :description, :text
  end

  def down
    remove_column :cars, :description
  end
end
