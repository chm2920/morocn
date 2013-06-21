#encoding: utf-8
module ApplicationHelper
  
  def location(cat)
    loc = ""
    case cat
    when "about"
      loc = %Q(<a href="/about" title="#{_t "location.about"}">#{_t "location.about"}</a>)
    when "management"
      loc = %Q(<a href="/qualification">#{_t 'location.management'}</a>)
    when "quality"
      loc = %Q(<a href="/qualification">#{_t 'location.management'}</a><a href="/quality">#{_t 'location.quality'}</a>)
    when "sale"
      loc = %Q(<a href="/sale">#{_t 'location.sale'}</a>)
    when "investment"
      loc = %Q(<a href="/investment">#{_t 'location.investment'}</a>)
    when "contact"
      loc = ""
    end
    loc.html_safe
  end
  
  def _t(key, *args)
    I18n.t(key, *args)
  end
  
  def sys_count(count)
    arr = count.to_s.split("")
    arr.map{|t|"<img src=\"/assets/count/" + t + ".gif\" />"}.join("").html_safe
  end
  
end
