Rails.application.routes.draw do
  resources :categories, param: :view_tag do
      resources :lessons, param: :view_tag
  end

  root to: "categories#index"
end
