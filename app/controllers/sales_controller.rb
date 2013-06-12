#encoding: utf-8
class SalesController < ApplicationController
  
  def index
    @title = _t "location.sale_civil"
  end
  
  def show
    @sale = Sale.find_by_city_id(params[:id])
    if @sale
      render :json => @sale
    else
      render :json => "{'data': 'error'}"
    end
  end
  
end
