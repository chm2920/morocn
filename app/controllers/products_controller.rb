#encoding: utf-8
class ProductsController < ApplicationController
  
  def list
    if !params[:id].nil?
      @product_catalog = ProductCatalog.find(params[:id])
      @products = @product_catalog.products
      
      @title = @product_catalog.name
    else
      @products = Product.all
      
      @title = "产品展示"
    end
  end
  
  def show
    @product = Product.find_by_title(params[:title])
    if @product.nil?
      redirect_to "/products"
      return
    end
    @product_catalog = @product.product_catalog
    @product_features = @product.product_features
    @product_imgs = @product.product_imgs
    @product_files = ProductFile.all(:conditions => "product_id = #{@product.id} and data_type = 'doc'")
    
    @title = @product.title + " " + @product_catalog.name
    
    if session[:products].nil?
      session[:products] = []
      session[:products] << @product.id
    else
      if !session[:products].include? @product.id
        session[:products] << @product.id
      end
    end    
  end
  
  def order
    @product = Product.find_by_title(params[:title])
    if @product.nil?
      redirect_to "/products"
      return
    end
    
    @title = @product.title + " 在线订购"
  end
  
  def order_rst
    @product_order = ProductOrder.new
    @product_order.items = params[:product_order][:items].to_json
    @product_order.info = params[:product_order][:info].to_json
    @product_order.save
    
    @title = "在线订购成功"
  end
  
  def clear_cookie
    session[:products] = nil
    @product = Product.find(params[:id])
    
    redirect_to @product.show_url
  end
  
end
