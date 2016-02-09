class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.integer :user_id, :index => true
    	t.integer :amount
    	t.string :status
    	t.integer :stops_count
    	t.integer :orders_count
    	t.string :priority 

      t.timestamps null: false
    end
  end
end
