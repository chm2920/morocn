class Admin::ProductFilesController < Admin::Backend
  
  def index
    @product = Product.find(params[:product_id])
    @product_files = @product.product_files
  end

  def new
    @product = Product.find(params[:product_id])
    @product_file = ProductFile.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @product_file = ProductFile.find(params[:id])
  end
  
  def create
    params.permit!
    @product = Product.find(params[:product_id])
    @product_file = ProductFile.new(params[:product_file])
    @product_file.product = @product
    if @product_file.save
      redirect_to [:admin, @product, :product_files]
    else
      render :action => "new"
    end
  end

  def update
    params.permit!
    @product = Product.find(params[:product_id])
    @product_file = ProductFile.find(params[:id])
    @product_file.update_attributes(params[:product_file])
    redirect_to [:admin, @product, :product_files]
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product_file = ProductFile.find(params[:id])
    @product_file.destroy
    redirect_to [:admin, @product, :product_files]
  end
  
end
