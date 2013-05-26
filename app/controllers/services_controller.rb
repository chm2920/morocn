class ServicesController < ApplicationController
  
  def index
    
  end
  
  def download
    if !params[:id].nil?
      product_id = params[:id]
      @product = Product.find(params[:id])
    else
      @product = Product.first
    end
    if @product.nil?
      @product = Product.first
    end
    @product_catalog = @product.product_catalog
    @product_imgs = @product.product_imgs
    @product_drawings = ProductFile.find(:all, :conditions => "product_id = #{@product.id} and data_type = 'drawing'")
    @product_docs = ProductFile.find(:all, :conditions => "product_id = #{@product.id} and data_type = 'doc'")
    
    @title = @product.title + " " + @product_catalog.name
  end
  
end
