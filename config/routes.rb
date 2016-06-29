Rails.application.routes.draw do

  # get 'errors/show'

  %w[404 422 500 503].each do |code|
    get code, to: "errors#show", code: code.to_i
  end

  root "pages#root"

  get  "/sitemap",   to: "pages#index",  as: :pages
  post "/pages",     to: "pages#create", as: :create_page
  get  "/pages/new", to: "pages#new",    as: :new_page

  # NOTE: The follow must be at the end of the list of routes.
  get    "*permalink",      to: "pages#show",  as: :page
  get    "*permalink/edit", to: "pages#edit",  as: :edit_page
  patch  "*permalink",      to: "pages#update"
  put    "*permalink",      to: "pages#update"
  delete "*permalink",      to: "pages#delete"

end
