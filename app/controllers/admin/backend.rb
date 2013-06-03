class Admin::Backend < ApplicationController
  
  layout 'backend'
  
  skip_before_filter :set_locale, :find_sys_setting
  
end
