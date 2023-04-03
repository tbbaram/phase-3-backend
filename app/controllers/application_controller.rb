class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/categories" do
    categories = Category.all
    categories.to_json(include: :tasks)
  end

  post "/category" do
    category = Category.create(
      category: params[:category]
    )
    category.to_json(include: :tasks)
  end

  post "/tasks" do
    task = Task.create(
      name: params[:name],
      description: params[:description],
      priority: params[:priority],
      category_id: params[:category_id]
    )
    task.to_json
  end

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(
      name: params[:name],
      description: params[:description],
      priority: params[:priority]
      )
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  delete "/category/:id" do
    category = Category.find(params[:id])
    category.destroy
    category.to_json
  end

end










