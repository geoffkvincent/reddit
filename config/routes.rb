Rails.application.routes.draw do
  root "subs#index"
  
  resources :subs do
    resources :topics
  end

  # resources :topics do
  #   resources :comments
  # end

  scope "topics/:topic_id", as: "topic" do
    resources :comments, only: [:new, :create]
  end

  # resources :subs, only: [:new, :create, :edit, :update]

  # get "/subs", to: "subs#index"
  # get "/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy"
end
