class Admin::Backend < ApplicationController
  
  layout 'backend'
  
  skip_before_filter :set_locale, :find_sys_setting
  
  before_filter :check_login
  
  
  def check_login
    if !session[:admin]
      redirect_to "/"
    end
  end
  
end
