Rails.application.routes.draw do
  # Routes for the Business resource:
  # CREATE
  get "/businesses/new", :controller => "businesses", :action => "new"
  post "/create_business", :controller => "businesses", :action => "create"

  # READ
  get "/businesses", :controller => "businesses", :action => "index"
  get "/businesses/:id", :controller => "businesses", :action => "show"

  # UPDATE
  get "/businesses/:id/edit", :controller => "businesses", :action => "edit"
  post "/update_business/:id", :controller => "businesses", :action => "update"

  # DELETE
  get "/delete_business/:id", :controller => "businesses", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
