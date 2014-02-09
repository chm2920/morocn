class Topic < ActiveRecord::Base
  
  belongs_to :catalog
  
  def show_url
    "/news/#{self.id}"
  end
  
  def date
    self.created_at.strftime("%Y-%m-%d")
  end
  
end
