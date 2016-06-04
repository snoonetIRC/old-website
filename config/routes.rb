Rails.application.routes.draw do
  root "pages#root"

  get "/sitemap", to: "pages#index"
end
