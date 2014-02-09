class Product < ActiveRecord::Base
  
  belongs_to :product_catalog
  
  has_many :product_imgs
  
  has_many :product_features
  
  has_many :product_files, :order => "id desc"
  
  
  def show_url
    "/products/#{self.title}"
  end
  
  def order_url
    "/order/#{self.title}"
  end
  
end
