class CreateProductFeatures < ActiveRecord::Migration
  def change
    create_table :product_features do |t|
      t.integer :product_id
      t.string :title
      t.string :img_url
      t.string :info
    end
  end
end
