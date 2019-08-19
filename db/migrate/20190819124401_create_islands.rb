class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.text :description
      t.string :localisation
      t.boolean :availability
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
