class RemoveColumnLocalisation < ActiveRecord::Migration[5.2]
  def change
    remove_column :islands, :localisation
  end
end
