class AboutController < ApplicationController
  
  def about
    @intro = Intro.find(1)
    @cat = "about"
    @title = _t "base.about"
    render "about"
  end
  
  def culture
    @intro = Intro.find(2)
    @cat = "about"
    @title = _t "base.culture"
    render "about"
  end
  
  def honor
    @intro = Intro.find(3)
    @cat = "about"
    @title = _t "base.honor"
    render "about"
  end
  
  def shop
    @intro = Intro.find(4)
    @cat = "sale"
    @title = _t "base.shop"
    render "about"
  end
  
  def join
    @intro = Intro.find(5)
    @cat = "join"
    @title = _t "base.join"
    render "about"
  end
  
  def join_process
    @intro = Intro.find(6)
    @cat = "join"
    @title = _t "base.join_process"
    render "about"
  end
  
  def contact    
    @intro = Intro.find(7)
    @cat = "contact"
    @title = _t "base.contact"
    render "about"
  end
  
  def careers
    @intro = Intro.find(8)
    @cat = "contact"
    @title = _t "base.careers"
    render "about"
  end
  
  def declaration
    @intro = Intro.find(9)
    @cat = "contact"
    @title = _t "base.declaration"
    render "about"
  end
  
  def quality
    @intro = Intro.find(10)
    @cat = "contact"
    @title = _t "base.quality"
    render "about"
  end
  
end
