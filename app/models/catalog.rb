class Catalog < ActiveRecord::Base
  
  has_many :topics, :dependent => :destroy, :order => "id desc"
  
  def show_url
    "/news_list/#{self.id}"
  end
  
end
