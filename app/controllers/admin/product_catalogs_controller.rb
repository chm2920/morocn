class Admin::ProductCatalogsController < Admin::Backend
  
  def index
    @product_catalogs = ProductCatalog.all
  end

  def new
    @product_catalog = ProductCatalog.new
  end

  def edit
    @product_catalog = ProductCatalog.find(params[:id])
  end
  
  def create
    @product_catalog = ProductCatalog.new(params[:product_catalog])
    if @product_catalog.save
      redirect_to [:admin, :product_catalogs]
    else
      render :action => "new"
    end
  end

  def update
    @product_catalog = ProductCatalog.find(params[:id])
    @product_catalog.update_attributes(params[:product_catalog])
    redirect_to [:admin, :product_catalogs]
  end

  def destroy
    @product_catalog = ProductCatalog.find(params[:id])
    @product_catalog.destroy
    redirect_to [:admin, :product_catalogs]
  end
  
end
