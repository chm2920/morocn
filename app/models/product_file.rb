class ProductFile < ActiveRecord::Base
  
  attr_accessible :product_id, :data_type, :data_url, :title
  
  belongs_to :product
  
end
