class Admin::ProductParamsController < Admin::Backend
  
  def index
    @product_catalog = ProductCatalog.find(params[:product_catalog_id])
    @product_params = @product_catalog.product_params    
  end

  def new
    @product_catalog = ProductCatalog.find(params[:product_catalog_id])
    @product_param = ProductParam.new
    @param_title = ["", ""]
  end
  
  def create
    params.permit!
    @product_catalog = ProductCatalog.find(params[:product_catalog_id])
    @product_param = ProductParam.new(params[:product_param])
    @product_param.product_catalog = @product_catalog
    @product_param.title = params[:title][:zh] + "$$$" + params[:title][:en]
    if @product_param.save
      redirect_to [:admin, @product_catalog, :product_params]
    else
      render :action => "new"
    end
  end
  
  def edit
    @product_catalog = ProductCatalog.find(params[:product_catalog_id])
    @product_param = ProductParam.find(params[:id])
    @param_title = @product_param.title.split("$$$")
  end
  
  def update
    params.permit!
    @product_catalog = ProductCatalog.find(params[:product_catalog_id])
    @product_param = ProductParam.find(params[:id])
    @product_param.title = params[:title][:zh] + "$$$" + params[:title][:en]
    @product_param.update_attributes(params[:product_param])
    redirect_to [:admin, @product_catalog, :product_params]
  end

  def destroy
    @product_param = ProductParam.find(params[:id])
    @product_param.destroy
    redirect_to [:admin, @product_param.product_catalog, :product_params]
  end
  
end
