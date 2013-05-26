class CreateProductFiles < ActiveRecord::Migration
  def change
    create_table :product_files do |t|
      t.integer :product_id
      t.string :title
      t.string :data_type
      t.string :data_url

      t.timestamps
    end
  end
end
