class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
  request_params = params.require(:request).permit([:title, :body])
  @request = Request.new(request_params)

    if @request.save
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def show
    @request = Request.find params[:id]
  end

  def index
    @request = Request.search(params[:search])
    if @request.class == Array
      @request = Kaminari.paginate_array(@request).page(params[:page]).per(7)
    else
      @request = @request.page(params[:page]).per(7)
    end
  end

  def edit
    @request = Request.find params[:id]
    render :edit
  end

  def update
    @request = Request.find params[:id]
    request_params = params.require(:request).permit(:title, :body)

    if @request.update request_params
      redirect_to request_path(@request)
    else
      render :edit
    end
  end

  def destroy
    @request = Request.find params[:id]
    @request.destroy
    redirect_to requests_path
  end

end
