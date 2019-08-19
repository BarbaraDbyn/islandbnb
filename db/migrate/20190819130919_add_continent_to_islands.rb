class AddContinentToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :continent, :string
  end
end
