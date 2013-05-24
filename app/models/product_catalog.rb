class ProductCatalog < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :products
  
  def show_url
    "/product_catalogs/#{self.id}"
  end
  
end
