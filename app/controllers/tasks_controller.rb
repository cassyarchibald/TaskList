class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    # Show details for one book
    task_id = params[:id].to_i
    @task = Task.find_by(id: task_id)
    if @task.nil?
      head :not_found
    end
  end

  def new
    # Creates a new task available for new view to use
      @task = Task.new
  end

  def create
    # Uses post to send form data to the server/save a new book
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # Form to edit details for an existing book. When you submit the form, it sends a patch request to update the databse
    @task = Task.find(params[:id].to_i)
    if @task.save
      redirect_to task_path
    else
      render :new
    end
  end

  def update
    # Sends form data to the server to update an existing book.
    @book = Book.find(params[:id].to_i)
  end

  def delete
    # Destroys an existing book and returns to home page
    @task = Task.find(params[:id].to_i)
    if @task.destroy
      redirect_to root_path
    end
  end
end
