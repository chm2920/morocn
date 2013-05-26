# encoding: utf-8

class ProductFeatureUploader < AssetUploader
  
  include CarrierWave::MiniMagick

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "upload/products_gn"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  #process :resize_and_pad => [658, 500]
  process :resize_to_fill => [40, 40]
  #
  # def scale(width, height)
    # manipulate! do |img|
      # img.resize "#{width}x#{height}"
      # img = yield(img) if block_given?
      # img
    # end
  # end

  # Create different versions of your uploaded files:
  # version :small do
    # process :resize_to_pad => [52, 40]
  # end

end
