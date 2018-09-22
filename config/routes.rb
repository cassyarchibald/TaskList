Rails.application.routes.draw do
  resources :tasks, except: [:delete]
  root "tasks#index"
  # get '/tasks', to: 'tasks#index', as: 'tasks'
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create', as: 'create_tasks'
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  # patch '/tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
  put '/tasks/:id/mark_complete', to: 'tasks#complete', as: 'mark_complete'
  put '/tasks/:id/mark_incomplete', to: 'tasks#incomplete', as: 'mark_incomplete'
end
