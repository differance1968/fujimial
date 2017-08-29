Rails.application.routes.draw do
  resources :reports
  get 'home/index'
  get "/activities/:id/edit" => "activities#edit"
  resources :activities
  get "/posts/index" => "posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
