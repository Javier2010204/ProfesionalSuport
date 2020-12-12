Rails.application.routes.draw do
  resources :contacts, only:[:new, :create, :show]
  resources :contracts, only:[:new,:create,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end


#jealynt_f
#evelynt.f
