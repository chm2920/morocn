class ProductImgs < ActiveRecord::Base  
  
  attr_accessible :product_id, :addr
  
  belongs_to :product
  
end
