class CreateSysSettings < ActiveRecord::Migration
  def change
    create_table :sys_settings do |t|
      t.string :stype
      t.text :setting
    end
    
    SysSetting.create(:stype => "setting", :setting => '{"site_name":"a","site_keywords":"b","site_desc":"c"}')    
    SysSetting.create(:stype => "flashpics", :setting => '{}')
    SysSetting.create(:stype => "index_ads", :setting => '{}')
  end
end
