class TopicsController < ApplicationController
  
  skip_before_filter :set_locale, :only => :news_list
  
  def list
    @catalog = Catalog.find(params[:id])
    @topics = Topic.paginate :page => params[:page], :per_page => 10, :conditions => ["catalog_id = ?", @catalog.id], :order => "id desc"
    
    @title = _t "location.news"
  end
  
  def show
    @topic = Topic.find(params[:id])
    if @topic.nil?
      redirect_to :action => "list"
      return
    end
    @topic.hits = @topic.hits + 1
    @topic.save
    @catalog = @topic.catalog
    @title = @topic.title + ' - ' + @catalog.name
  end
  
  def news_list
    @catalog = Catalog.find(params[:id])
    @topics = @catalog.topics
    render :json => @topics.map{|t|t.as_json(:only => [:id, :title], :methods => [:show_url, :date])}
  end
  
end
