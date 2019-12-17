class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.string :value
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
