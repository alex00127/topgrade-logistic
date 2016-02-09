class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.integer :user_id
    	t.string :name
    	t.string :email
    	t.string :shipper
    	t.string :shipper_add
    	t.string :shipper_tel
    	t.datetime :shipping_time
    	t.string :shipping_status
    	t.string :carrier
    	t.integer :weight
      t.integer :volume
      t.string  :ton_name
      t.integer :ton_id, :index => true
      t.integer :stops_count
      t.integer :amount
      t.integer :task_id, :index => true
      t.text :remark
      t.string :status
      t.string :payment_status

      t.timestamps null: false
    end
  end
end
