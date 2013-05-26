# encoding: utf-8

class ProductFileUploader < AssetUploader

  def store_dir
    "upload/editor/file"
  end
  
  def extension_white_list
    %w(doc docx xls xlsx ppt htm html txt zip rar gz bz2)
  end

end
