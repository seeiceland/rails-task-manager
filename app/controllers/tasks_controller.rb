class TasksController < ApplicationController
   before_action :set_task, only: [:show, :edit, :update, :destroy]
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
  end

  def edit
       # @restaurant = Restaurant.find(params[:id])
  end

  def update
       # @restaurant = Restaurant.find(params[:id])
       @task.update(task_params)
        redirect_to tasks_path(@task)

  end

  def destroy
         # @restaurant = Restaurant.find(params[:id])
       @task.destroy
        redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
      @task = Task.find(params[:id])
  end
end
