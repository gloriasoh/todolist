class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @list = List.find(params[:list_id])
    @tasks = @list.tasks.all
    @task = @list.tasks.create(task_params)
    if @task.save
      flash[:notice] = "Task successfully created"
      redirect_to list_path(@list)
    else
      flash[:alert] = "Error! Could not be saved"

      render 'lists/show'
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = Task.destroy(params[:id])
    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:list_id])
    # @task = Task.find(params[:id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to list_path(@list)
    end
  end

  private
  def task_params
    params.require(:task).permit(:name, :descriptions, :status, :date)
  end
end
