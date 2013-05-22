class Admin::SysController < Admin::Backend
  
  def settings
    @sys_setting = SysSetting.find_by_stype("setting")
    case request.method
    when "POST"
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "setting"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
end
