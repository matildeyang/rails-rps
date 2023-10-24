Rails.application.routes.draw do
  # this will tell the rails what to do when rock is called
  # controller is the class 
  # hash literals don't need curlies
  get("/rock", { :controller => "game", :action => "user_played_rock"})
  get("/paper", { :controller => "game", :action => "user_played_paper"}) 
  get("/scissors", { :controller => "game", :action => "user_played_scissors"})
  get("/", { :controller => "game", :action => "home"})
end
