class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_catalog_id
      t.string :title
      t.string :cover
      t.text :specifications
      t.string :buy_url

      t.timestamps
    end
  end
end
