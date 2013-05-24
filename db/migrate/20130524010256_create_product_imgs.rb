class CreateProductImgs < ActiveRecord::Migration
  def change
    create_table :product_imgs do |t|
      t.integer :product_id
      t.string :addr

      t.timestamps
    end
  end
end
