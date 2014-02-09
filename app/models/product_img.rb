class ProductImg < ActiveRecord::Base  
  
  belongs_to :product
  
  # mount_uploader :addr, ProductImgUploader
  
end
