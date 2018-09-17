class TasksController < ApplicationController
  TASKS = [
    {name: "Task One", description: "Wash dishes", completion_date: "9/18/2018"},
    {name: "Task Two", description: "Walk dog", completion_date: "9/20/2018"},
    {name: "Task Three", description: "Do homework", completion_date: "9/23/2018"},

  ]
  def index
    @tasks = TASKS
  end
end
