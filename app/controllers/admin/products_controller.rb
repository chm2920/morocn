class Admin::ProductsController < Admin::Backend
  
  def index
    if !params[:product_ids].nil?
      Topic.destroy_all(["id in (?)", params[:product_ids]])
    end
    if !params[:page].nil?
      @page = params[:page].to_i
    else
      @page = 1
    end
    @products = Product.paginate :page => @page, :per_page => 20, :order => "id asc"
  end

  def new
    @product_catalogs = ProductCatalog.all
    @product = Product.new
  end

  def edit
    @product_catalogs = ProductCatalog.all
    @product = Product.find(params[:id])
  end
  
  def create
    params.permit!
    @product = Product.new(params[:product])
    if @product.save
      redirect_to [:admin, :products]
    else
      render :action => "new"
    end
  end

  def update
    params.permit!
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    redirect_to [:admin, :products]
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to [:admin, :products]
  end
  
  def specifications
    @product = Product.find(params[:id])
    @product_catalog = @product.product_catalog
    @product_params = @product_catalog.product_params
    case request.method
    when "POST"
      hsh = {}
      0.upto params[:s][:k].length - 1 do |i|
        hsh[params[:s][:k][i.to_s]] = params[:s][:v][i.to_s]
      end
      @product.specifications = hsh.to_json
      @product.save
      @result = "ok"
    end
  end
  
end
