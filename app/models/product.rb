class Product < ActiveRecord::Base
  
  attr_accessible :product_catalog_id, :title, :specifications, :cover, :buy_url
  
  belongs_to :product_catalog
  
  has_many :product_imgs
  
  has_many :product_features
  
  has_many :product_files
  
  
  def show_url
    "/products/#{self.title}"
  end
  
end
