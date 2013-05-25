class ProductFeature < ActiveRecord::Base
  
  attr_accessible :product_id, :title, :img_url, :info
  
  belongs_to :product
  
end
