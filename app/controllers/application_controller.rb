class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_sys_setting
  
  def find_sys_setting
    @sys_setting = SysSetting.find_by_stype("setting")
    @setting = JSON.parse(@sys_setting.setting)
    
    @product_catalogs = ProductCatalog.all
    @friendlinks = Friendlink.find(:all, :order => "rank asc")
  end
  
end
