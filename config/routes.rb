Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "homepage"})
  get("/users", {:controller => "users", :action => "users"})
  get("/photos", {:controller => "photos", :action => "photos"})
end
