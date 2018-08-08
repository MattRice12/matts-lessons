Rails.application.routes.draw do
  resources :languages, param: :view_tag
  resources :categories, param: :view_tag, only: [:show]
  resources :lessons, param: :view_tag, only: [:show]
  root to: "languages#index"
end
