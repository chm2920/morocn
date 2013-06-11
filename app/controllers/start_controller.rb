class StartController < ApplicationController
  
  def index
    if !session[:locale].blank? && session[:locale] != 'zh'
      @sys_setting = SysSetting.find_by_stype("en_flashpics")
      @flashpics = JSON.parse(@sys_setting.setting)
      @sys_setting = SysSetting.find_by_stype("en_index_ads")
      @index_ads = JSON.parse(@sys_setting.setting)
    else
      @sys_setting = SysSetting.find_by_stype("flashpics")
      @flashpics = JSON.parse(@sys_setting.setting)
      @sys_setting = SysSetting.find_by_stype("index_ads")
      @index_ads = JSON.parse(@sys_setting.setting)
    end
  end
  
  def ch
    session[:locale] = params[:id]
    I18n.locale = session[:locale] || I18n.default_locale
    redirect_to "/"
  end
  
end
