# encoding: utf-8

class FlashpicUploader < AssetUploader
  
  include CarrierWave::MiniMagick
  
  def store_dir
    "upload/slide"
  end
  
  process :resize_to_fill => [980, 400]

end
