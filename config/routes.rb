Rails.application.routes.draw do
  get 'errors/show'

  %w[404 422 500 503].each do |code|
    get code, to: "errors#show", code: code.to_i
  end

  root "pages#root"

  get "/sitemap",   to: "pages#index"
  get "*permalink", to: "pages#show"
end
