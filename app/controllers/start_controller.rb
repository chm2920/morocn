class StartController < ApplicationController
  
  def index
    @sys_setting = SysSetting.find_by_stype("flashpics")
    @flashpics = JSON.parse(@sys_setting.setting)
    @sys_setting = SysSetting.find_by_stype("index_ads")
    @index_ads = JSON.parse(@sys_setting.setting)
  end
  
  def ch
    session[:local] = params[:local]
  end
  
end
