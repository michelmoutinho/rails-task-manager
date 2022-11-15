Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  # CREATE a task
  get 'tasks/new', to: 'tasks#new' # this get shows the form
  post 'tasks', to: 'tasks#create' # this post submits the info in the form

  # READ one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # get the HTML form (pre-filled with task attributes) for editing
  patch 'tasks/:id', to: 'tasks#update' # the parameters to update an existing task

  # DELETE a restaurant
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task

  # Defines the root path route ("/")
  # root "articles#index"
end
