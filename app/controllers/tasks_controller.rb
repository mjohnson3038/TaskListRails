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

  def update
    @list = Task.find(params[:id])
    if @list.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @list = Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:item, :description, :is_completed)
  end

end
