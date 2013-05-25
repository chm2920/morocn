class ProductImg < ActiveRecord::Base  
  
  attr_accessible :product_id, :title, :addr
  
  belongs_to :product
  
end
