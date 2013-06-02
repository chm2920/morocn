#encoding: utf-8
module ApplicationHelper
  
  def location(cat)
    loc = ""
    case cat
    when "about"
      loc = %Q(<a href="/about" title="#{_t "location.about"}">#{_t "location.about"}</a>)
    when "sale"
      loc = %Q(<a href="/sale">#{_t 'location.sale'}</a>)
    when "join"
      loc = %Q(<a href="/join">#{_t 'location.join'}</a>)
    when "contact"
      loc = ""
    end
    loc.html_safe
  end
  
  def _t(key, *args)
    I18n.t(key, *args)
  end
  
end
