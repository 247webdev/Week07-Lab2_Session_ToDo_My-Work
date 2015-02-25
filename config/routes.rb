Rails.application.routes.draw do
  root "todos#index"

  delete "/todos", to: "todos#delete", as: "todos_delete"

  delete "/task", to: "todos#delete_one", as: "task_delete"

  get "/todos", to: "todos#index", as: "todos" # the "as:" is naming the route to have rails allow todos_path   ... also best practice to put the as: in the get

  post "/todos", to: "todos#create"

end
