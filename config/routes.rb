Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "movies#index"
  
  # verb "url" => "name_of_controllers#name_of_action"
  get "movies" => "movies#index"
  
  # Variables in routes start with a colon (:)
  # All URL request parameters are automatically captured by Rails in a Ruby hash called params. 
  # You can access this hash inside of any controller action. 
  # In this case, because the route has a variable named :id, you can get the movie id that's embedded in the URL by accessing params[:id].
  get "movies/:id" => "movies#show", as: "movie"
end
