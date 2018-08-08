Rails.application.routes.draw do
  resources :languages, param: :view_tag do
    resources :categories, param: :view_tag do
        resources :lessons, param: :view_tag
    end
  end
  root to: "languages#index"
end
