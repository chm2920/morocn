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
    params.permit!
    @product_catalog = ProductCatalog.new(params[:product_catalog])
    @product_catalog.name = params[:name][:zh] + "$$$" + params[:name][:en]
    if @product_catalog.save
      redirect_to [:admin, :product_catalogs]
    else
      render :action => "new"
    end
  end

  def update
    params.permit!
    @product_catalog = ProductCatalog.find(params[:id])
    @product_catalog.name = params[:name][:zh] + "$$$" + params[:name][:en]
    @product_catalog.save
    redirect_to [:admin, :product_catalogs]
  end

  def destroy
    @product_catalog = ProductCatalog.find(params[:id])
    @product_catalog.destroy
    redirect_to [:admin, :product_catalogs]
  end
  
end
