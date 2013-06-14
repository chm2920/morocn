#encoding: utf-8
class ServicesController < ApplicationController
  
  def products_intro
    @faqs = Faq.all
    @title = _t "location.products_intro"
  end
  
  def guestbooks
    @guestbooks = Guestbook.paginate :page => params[:page], :per_page => 10, :conditions => "created_at != updated_at", :order => "id desc"
    @title = _t "location.guestbooks"
  end
  
  def guestbook_new
    @guestbook = Guestbook.new
    case request.method
    when "POST"
      @guestbook.area = params[:gb_info].to_json
      @guestbook.text = params[:gb_content].to_json
      @guestbook.save
      render :text => "<script>alert('提交成功，请等待管理员审核。');location.href='/guestbooks';</script>"
    end
    @title = _t "location.guestbook_new"
  end
  
end
