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
    
    @sys_count = SysSetting.find_by_stype("sys_count")
    @sys_count_v = JSON.parse(@sys_count.setting)
    if session[:sys_count].nil?
      @sys_count.setting = "{\"count\":\"" + (@sys_count_v["count"].to_i + 1).to_s + "\"}"
      @sys_count.save
      session[:sys_count] = @sys_count_v["count"]
    end
    
    @product_catalogs = ProductCatalog.all
    @kfs = Kf.all
  end
  
  def _t(key, *args)
    I18n.t(key, *args)
  end
  
  def self.rescue_errors
    rescue_from Exception,                            :with => :render_error
    rescue_from RuntimeError,                         :with => :render_error
    rescue_from ActiveRecord::RecordNotFound,         :with => :render_not_found
    rescue_from ActionController::RoutingError,       :with => :render_not_found
    rescue_from ActionController::UnknownController,  :with => :render_not_found
    rescue_from ActionController::UnknownAction,      :with => :render_not_found
  end
  rescue_errors
  
  def render_not_found(exception=nil)
    record_error(params[:path])
    render :template => "errors/404", :status => 404, :layout => "application"
  end
  
  def render_error(exception)
    record_error(exception)
    render :template => "errors/500", :status => 500, :layout => "application"
  end
  
  def record_error(e)
    RunLog.log_info(params, request, e)
  end
  
end
