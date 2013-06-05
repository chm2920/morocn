class ProductParam < ActiveRecord::Base
  
  attr_accessible :product_catalog_id, :mark, :title
  
  belongs_to :product_catalog
  
end
