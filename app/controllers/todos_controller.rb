class TodosController < ApplicationController
  def index
    @todos = session[:todos] ||= []
    # binding.pry
  end
  def create
    #add a todo to the session[:todos]
    session[:todos] << params[:task]
    redirect_to todos_path
  end
  def delete
    #clear the session[:todos] all todos
    session[:todos] = []
    redirect_to todos_path
  end
  #bonus
  def delete_one
    session[:todos].delete_if {|x| x == params["format"] }
    # without explicityly passing a value from the form, 
    #delete specific todo
    redirect_to todos_path
  end
end
