class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
    	t.string :consignee
    	t.string :consignee_add
  	  t.string :consignee_tel    
  	  t.integer :order_id, :index => true
  	  t.string :item
  	  t.integer :qty
  	  t.integer :charge_id, :index => true

      t.timestamps null: false
    end
  end
end
