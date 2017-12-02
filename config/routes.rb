Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # verb "url" => "name_of_controllers#name_of_action"
  get "movies" => "movies#index"
end
