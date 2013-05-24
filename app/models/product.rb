class Product < ActiveRecord::Base
  
  attr_accessible :product_catalog_id, :title, :specifications, :features
  
  belongs_to :product_catalog
  
  has_many :product_pics
  
  
  def cover
    "http://www.morocn.com/upload/products/5129121114154225_big.jpg"
  end
  
  def show_url
    "/products/#{self.id}"
  end
  
end
