#encoding: utf-8
class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :city_id
      t.string :city
      t.text :info
    end
    
    %w[上海|2 河北|5 山西|6 辽宁|7 吉林|8 黑龙江|9 江苏|10 浙江|11 安徽|12 福建|13 江西|14 山东|15 河南|16 湖北|17 湖南|18 广东|19 海南|20 四川|21 贵州|22 云南|23 陕西|24 宁夏|25 内蒙古|26 广西|27 新疆|28 西藏|29 甘肃|30 青海|31 台湾|32].each do |city|
      arr = city.to_s.split("|")
      Sale.create(:city_id => arr[1], :city => arr[0], :info => "")
    end
  end
end
