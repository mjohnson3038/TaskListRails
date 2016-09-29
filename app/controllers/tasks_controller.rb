class TasksController < ApplicationController
  def index
    @list = Task.all


  end

  def new
    @list = Task.new
  end

  def show
    @list = Task.find(params[:id])
  end

  def create
    @list = Task.new(task_params)
    @list.save
    if @list.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @list = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:item, :description, :is_completed)
  end

end
