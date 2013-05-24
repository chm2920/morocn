class CreateProductCatalogs < ActiveRecord::Migration
  def change
    create_table :product_catalogs do |t|
      t.string :name
    end
  end
end
