class Admin::ProductOrdersController < Admin::Backend
  
  def index
    if !params[:product_order_ids].nil?
      ProductOrder.destroy_all(["id in (?)", params[:product_order_ids]])
    end
    if !params[:page].nil?
      @page = params[:page].to_i
    else
      @page = 1
    end
    @product_orders = ProductOrder.paginate :page => @page, :per_page => 20, :order => "id desc"
  end

  def show
    @product_order = ProductOrder.find(params[:id])
  end

  def destroy
    @product_order = ProductOrder.find(params[:id])
    @product_order.destroy
    redirect_to [:admin, :product_orders]
  end
  
end
