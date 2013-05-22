class TopicsController < ApplicationController
  
  def list
    @catalog = Catalog.find(params[:id])
    @topic = @catalog.topics.first
    @title = @topic.title + '-' + @catalog.name
    render :show
  end
  
  def show
    @topic = Topic.find(params[:id])
    @catalog = @topic.catalog
    @title = @topic.title + '-' + @catalog.name
  end
  
  def news_list
    @catalog = Catalog.find(params[:id])
    @topics = @catalog.topics
    render :json => @topics.map{|t|t.as_json(:only => [:id, :title], :methods => [:show_url, :date])}
  end
  
end
