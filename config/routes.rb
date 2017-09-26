Rails.application.routes.draw do
  get "/:channel", to: 'comments#dashboard', as: :dashboard
  root to: 'comments#home'

  # API
  get "/:channel/comments", to: "comments#index", defaults: { format: :json}
  post "/:channel/comments", to: "comments#create", defaults: { format: :json}
end
