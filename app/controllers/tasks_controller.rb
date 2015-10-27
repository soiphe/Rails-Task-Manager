class TasksController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
    # create pas de view
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

private

  def set_restaurant
     @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :content)
  end

end
