class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :kind
      t.string :email
      t.string :password
      t.string :name
      t.string :surname
      t.string :postalcode
      t.string :country
      t.integer :phone
      t.timestamps
    end
  end
end
