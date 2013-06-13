#encoding: utf-8
class ServicesController < ApplicationController
  
  def products_intro
    @faqs = Faq.all
    @title = _t "location.products_intro"
  end
  
  def guestbooks
    @guestbooks = Guestbook.paginate :page => params[:page], :per_page => 15, :order => "id desc"
    @title = _t "location.guestbooks"
  end
  
  def guestbook_new
    @guestbook = Guestbook.new
    case request.method
    when "POST"
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
      render :text => "<script>alert('提交成功。');location.href='/guestbooks';</script>"
    end
    @title = _t "location.guestbook_new"
  end
  
end
