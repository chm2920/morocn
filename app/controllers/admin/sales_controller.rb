class Admin::SalesController < Admin::Backend
  
  def index
    @sales = Sale.all
  end

  def edit
    @sale = Sale.find(params[:id])
    @info = JSON.parse(@sale.info)
  rescue
    @info = {"a" => "", "b" => "", "c" => "", "d" => ""}
  end
  
  def update
    @sale = Sale.find(params[:id])
    @sale.info = params[:sale].to_json
    @sale.save
    redirect_to [:admin, :sales]
  end
  
  def clear
    @sale = Sale.find(params[:id])
    @sale.info = ""
    @sale.save
    redirect_to [:admin, :sales]
  end
  
end
