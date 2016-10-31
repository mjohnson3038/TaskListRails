class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update]

  def index
    @list = Task.all
  end

  def new
    @list = Task.new
  end

  def show; end

  def create
    @list = Task.new(task_params)
    @list.save
    if @list.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @list.update(task_params)
      if @list.is_completed = false
        @list.completed_date = date.now
      end
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

  def find_task
    @list = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:item, :description, :is_completed, :date_completed)
  end

end
