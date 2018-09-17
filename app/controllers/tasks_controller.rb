class TasksController < ApplicationController
  TASKS = [
    {id: 1, name: "Task One", description: "Wash dishes", completion_date: "9/18/2018"},
    {id: 2, name: "Task Two", description: "Walk dog", completion_date: "9/20/2018"},
    {id: 3, name: "Task Three", description: "Do homework", completion_date: "9/23/2018"},

  ]
  def index
    @tasks = TASKS
  end

  def show
    task_id = params[:id].to_i
    @task = TASKS[task_id]
    if @task.nil?
      head :not_found
    end
  end
end
