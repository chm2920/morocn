#encoding: utf-8
class ServicesController < ApplicationController
  
  def index
    case request.method
    when "POST"
      @guestbook = Guestbook.new
      arr = []
      if !params[:eds_prov].nil? 
        arr << params[:eds_prov]
      end
      if !params[:eds_city].nil?
        arr << params[:eds_city]
      end
      if !params[:eds_dist].nil?
        arr << params[:eds_dist]
      end
      @guestbook.area = arr.join("-")
      @guestbook.text = params[:eds_content]
      @guestbook.save
      render :text => "<script>alert('提交成功。');location.href='/service';</script>"
    end
    @title = "故障保修"
  end
  
  def faq
    case request.method
    when "POST"
      @keyword = params[:s_key].strip
      @faqs = Faq.find(:all, :conditions => ["title like ?", "%" + @keyword + "%"])
    else
      @faqs = Faq.all
    end
    @title = "常见问题"
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
    
    @title = @product.title + " " + @product_catalog.show_name(session[:locale])
  end
  
end
