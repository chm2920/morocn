class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_catalog_id
      t.string :title
      t.text :specifications
      t.text :features

      t.timestamps
    end
  end
end
