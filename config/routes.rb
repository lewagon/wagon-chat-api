Rails.application.routes.draw do
  get "/:channel", to: 'comments#dashboard', as: :dashboard
  root to: 'comments#home'

  # API
  get "/:channel/comments", to: "comments#index", channel: /\d+/, defaults: { format: :json}
  post "/:channel/comments", to: "comments#create", channel: /\d+/, defaults: { format: :json}
end
