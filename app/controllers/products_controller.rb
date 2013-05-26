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
  
  def clear_cookie
    session[:products] = nil
    @product = Product.find(params[:id])
    
    redirect_to @product.show_url
  end
  
end
