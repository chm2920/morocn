class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.string :items
      t.text :info
      
      t.timestamps
    end
  end
end
