#encoding: utf-8
module ApplicationHelper
  
  def location(cat)
    loc = ""
    case cat
    when "about"
      loc = %Q(<a href="/about" title=\"关于梦露\">关于梦露</a>)
    when "sale"
      loc = %Q(<a href="/sale">全国市场一览</a>)
    when "join"
      loc = %Q("<a href="/join">招商加盟</a>")
    when "contact"
      loc = ""
    end
    loc.html_safe
  end
  
end
