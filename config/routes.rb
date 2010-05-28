ActionController::Routing::Routes.draw do |map|
  map.upvote 'artworks/:id/upvote', :controller => 'artworks', :action => 'upvote'
  map.resources :artworks
  
  map.connect ':controller/:action'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "welcome"
end
