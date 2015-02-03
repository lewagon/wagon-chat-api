Rails.application.routes.draw do
  get "/:promo_id", to: 'comments#dashboard', as: :dashboard
  root to: 'comments#home'

  # API
  get "/:promo_id/comments", to: "comments#index", promo_id: /\d+/, defaults: { format: :json}
  post "/:promo_id/comments", to: "comments#create", promo_id: /\d+/, defaults: { format: :json}
end
