class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.string :gender
      t.string :colors
      t.string :price
      t.integer :new
      t.integer :trending

      t.timestamps
    end
  end
end
