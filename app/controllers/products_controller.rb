class ProductsController < ApplicationController
  
  def list
    if !params[:id].nil?
      @product_catalog = ProductCatalog.find(params[:id])
      @products = @product_catalog.products
    else
      @products = Product.all
    end
  end
  
  def show
    @product = Product.find(params[:id])
    @product_catalog = @product.product_catalog
    @product_features = @product.product_features
    
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
