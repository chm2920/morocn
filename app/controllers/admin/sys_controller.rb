class Admin::SysController < Admin::Backend
  
  def settings
    @sys_setting = SysSetting.find_by_stype("setting")
    case request.method
    when "POST"
      params.permit!
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "setting"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
  def flashpics
    @sys_setting = SysSetting.find_by_stype("flashpics")
    case request.method
    when "POST"
      params.permit!
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "flashpics"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
  def index_ads
    params.permit!
    @sys_setting = SysSetting.find_by_stype("index_ads")
    case request.method
    when "POST"
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "index_ads"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
  def en_flashpics
    params.permit!
    @sys_setting = SysSetting.find_by_stype("en_flashpics")
    case request.method
    when "POST"
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "en_flashpics"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
      puts @sys_setting.setting
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
  def en_index_ads
    params.permit!
    @sys_setting = SysSetting.find_by_stype("en_index_ads")
    case request.method
    when "POST"
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "en_index_ads"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
  def sys_count
    params.permit!
    @sys_setting = SysSetting.find_by_stype("sys_count")
    case request.method
    when "POST"
      @sys_setting.setting = params[:sys_setting][:setting].to_json
      @sys_setting.save
      @result = "OK"
    else
      if @sys_setting.nil?
        @sys_setting = SysSetting.new
        @sys_setting.stype = "sys_count"
        @sys_setting.setting = "{}"
        @sys_setting.save
      end
    end
    @setting = JSON.parse(@sys_setting.setting)
  end
  
end
