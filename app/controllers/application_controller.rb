class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale, :find_sys_setting
  
  def set_locale
    if !params[:locale].blank?
      session[:locale] = params[:locale]
    end
    I18n.locale = session[:locale] || I18n.default_locale
    rescue
    I18n.locale = session[:locale] = I18n.default_locale
  end
  
  def find_sys_setting
    @sys_setting = SysSetting.find_by_stype("setting")
    @setting = JSON.parse(@sys_setting.setting)
    
    @product_catalogs = ProductCatalog.all
    @kfs = Kf.all
  end
  
  def _t(key, *args)
    I18n.t(key, *args)
  end
  
end
