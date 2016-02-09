class CreateTons < ActiveRecord::Migration
  def change
    create_table :tons do |t|
    	t.string :name
    	t.float :price_ratio

      t.timestamps null: false
    end
  end
end
