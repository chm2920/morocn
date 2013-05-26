class CreateProductImgs < ActiveRecord::Migration
  def change
    create_table :product_imgs do |t|
      t.integer :product_id
      t.string :title
      t.string :addr
    end
  end
end
