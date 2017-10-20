class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks.all
    @task = @list.tasks.build
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "Successfully created!"
      redirect_to lists_path
    else
      @lists = List.all
      render :index
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end
