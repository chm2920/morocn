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
  
  def qualification
    @intro = Intro.find(11)
    @cat = "management"
    @title = _t "base.qualification"
    render "about"
  end
  
  def quality
    @intro = Intro.find(12)
    @cat = "quality"
    @title = _t "base.quality_a"
    render "about"
  end
  
  def quality_b
    @intro = Intro.find(13)
    @cat = "quality"
    @title = _t "base.quality_b"
    render "about"
  end
  
  def quality_c
    @intro = Intro.find(14)
    @cat = "quality"
    @title = _t "base.quality_c"
    render "about"
  end
  
  def quality_d
    @intro = Intro.find(15)
    @cat = "quality"
    @title = _t "base.quality_d"
    render "about"
  end
  
  def national
    @intro = Intro.find(4)
    @cat = "sale"
    @title = _t "base.sale_national"
    render "about"
  end
  
  def investment
    @intro = Intro.find(5)
    @cat = "investment"
    @title = _t "base.global_investment"
    render "about"
  end
  
  def investment_process
    @intro = Intro.find(6)
    @cat = "investment"
    @title = _t "base.investment_process"
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
  
end
