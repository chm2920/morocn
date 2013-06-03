class Admin::KfsController < Admin::Backend
  
  def index
    @kfs = Kf.all
  end

  def new
    @kf = Kf.new
  end

  def edit
    @kf = Kf.find(params[:id])
  end
  
  def create
    @kf = Kf.new(params[:kf])
    if @kf.save
      redirect_to [:admin, :kfs]
    else
      render :action => "new"
    end
  end

  def update
    @kf = Kf.find(params[:id])
    @kf.update_attributes(params[:kf])
    redirect_to [:admin, :kfs]
  end

  def destroy
    @kf = Kf.find(params[:id])
    @kf.destroy
    redirect_to [:admin, :kfs]
  end
  
end
