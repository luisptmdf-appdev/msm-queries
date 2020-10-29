Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/eldest", {:controller => "directors", :action => "eldest"})
  get("/directors/youngest", {:controller => "directors", :action => "youngest"})
  # rails reads from top to bottom. THerefore, if I define a dynamic route (/:id) before a static route (/eldest), rails will never go into the static route
  get("/directors/:id", {:controller => "directors", :action => "director_profile"})
  
  
  get("/actors", {:controller => "actors", :action => "index"})
  get("/movies", {:controller => "movies", :action => "index"})

  
end

