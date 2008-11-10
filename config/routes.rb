ActionController::Routing::Routes.draw do |map|
  map.restfully :commit
  map.restfully :preview

  map.root :controller => "commits", :action => 'gets', :method => 'get'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
