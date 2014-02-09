class ProductCatalog < ActiveRecord::Base
  
  has_many :products
  
  has_many :product_params, :dependent => :destroy
  
  def show_url
    "/product_catalogs/#{self.id}"
  end
  
  def show_name(locale)
    arr = self.name.split("$$$")
    if !locale.blank? && locale != 'zh'
      arr[1]
    else
      arr[0]
    end
  end
  
end
