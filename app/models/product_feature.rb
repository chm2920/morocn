class ProductFeature < ActiveRecord::Base
  
  attr_accessible :product_id, :title, :img_url, :info
  
  belongs_to :product
  
  def show_title(locale)
    arr = self.title.split("$$$")
    if !locale.blank? && locale != 'zh'
      arr[1]
    else
      arr[0]
    end
  end
  
  def show_info(locale)
    arr = self.info.split("$$$")
    if !locale.blank? && locale != 'zh'
      arr[1]
    else
      arr[0]
    end
  end
  
end
