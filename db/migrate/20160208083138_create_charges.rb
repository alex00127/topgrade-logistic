class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
    	t.string :city
    	t.string :area
    	t.integer :price

      t.timestamps null: false
    end
  end
end
