# encoding: utf-8

class IndexAdUploader < AssetUploader
  
  include CarrierWave::MiniMagick
  
  def store_dir
    "upload/slide"
  end
  
  process :resize_to_fill => [320, 120]

end
