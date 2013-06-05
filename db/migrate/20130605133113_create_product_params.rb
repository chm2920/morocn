#encoding: utf-8
class CreateProductParams < ActiveRecord::Migration
  def change
    create_table :product_params do |t|
      t.integer :product_catalog_id
      t.string :mark
      t.string :title
    end
    
    ["电源", "水温", "水温加热功率", "暖风温度", "暖风加热功率", "座圈加热功率", "水箱容积", "适用水压", "冲洗流量", "女性清洗水量", "排水方式", "坑距", "冲水方式"].each do |t|
      product_param = ProductParam.new
      product_param.product_catalog_id = 1
      product_param.title = t
      product_param.save
    end
    
    ["电源", "水温", "水温加热功率", "暖风温度", "暖风加热功率", "座圈加热功率", "水箱容积", "适用水压", "冲洗流量", "女性清洗水量", "排水方式", "坑距", "冲水方式"].each do |t|
      product_param = ProductParam.new
      product_param.product_catalog_id = 2
      product_param.title = t
      product_param.save
    end
    
  end
end
