class Admin::SalesController < Admin::Backend
  
  def index
    @sales = Sale.all
  end

  def edit
    @sale = Sale.find(params[:id])
  end
  
  def update
    @sale = Sale.find(params[:id])
    @sale.update_attributes(params[:sale])
    redirect_to [:admin, :sales]
  end
  
end
