class ProductFeature < ActiveRecord::Base
  
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
