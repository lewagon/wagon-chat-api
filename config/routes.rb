Rails.application.routes.draw do
  get "/:channel", to: 'comments#dashboard', as: :dashboard
  root to: 'comments#home'

  # API
  get "/:channel/messages", to: "comments#index", defaults: { format: :json }
  post "/:channel/messages", to: "comments#create", defaults: { format: :json }
end
