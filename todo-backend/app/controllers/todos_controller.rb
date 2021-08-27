class TodosController < ApplicationController

  #show all
  get "/todos" do 
    todos = Todo.all
    todos.to_json
  end

  #show details
  get "/todos/:id" do
    find_todo
    @todo.to_json
  end

  post "/todos" do
    todo = Todo.create(params)
    todo.to_json
  end

  patch "/todos/:id" do
    find_todo
    @todo.update(params)
    @todo.to_json
  end

  delete "/todos/:id" do
    find_todo
    @todo.destroy
    @todo.to_json
  end

  private
    def find_todo
      @todo = Todo.find_by_id(params[:id])
    end



end