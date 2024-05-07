Rails.application.routes.draw do
  #home
  get("/", {:controller => "users", :action => "index"})

  #user controller routes
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:path_username", {:controller => "users", :action => "show"})
    #post actions
  post("/add_user", {:controller => "users", :action => "create"})
  post("/update_user/:path_id", {:controller => "users", :action => "update"})

  #photo controller routes
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:path_id", {:controller => "photos", :action => "show"})
    #post actions
  post("/delete_photo/:path_id", {:controller => "photos", :action => "delete"})
  post("insert_photo", {:controller => "photos", :action => "create"})
  post("update_photo/:path_id", {:controller => "photos", :action => "update"})
  post("add_comment/:path_id", {:controller => "photos", :action => "create_comment"})
end
