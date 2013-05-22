class Admin::IntrosController < Admin::Backend
  
  def index
    @intros = Intro.all(:order => "id asc")
  end

  def new
    @intro = Intro.new
  end

  def edit
    @intro = Intro.find(params[:id])
  end
  
  def create
    @intro = Intro.new(params[:intro])
    @intro.content = params[:content]
    @intro.en_content = params[:en_content]
    if @intro.save
      redirect_to [:admin, :intros]
    else
      render :action => "new"
    end
  end

  def update
    @intro = Intro.find(params[:id])
    @intro.content = params[:content]
    @intro.en_content = params[:en_content]
    @intro.update_attributes(params[:intro])
    redirect_to [:admin, :intros]
  end

  def destroy
    @intro = Intro.find(params[:id])
    @intro.destroy
    redirect_to [:admin, :intros]
  end
  
end
