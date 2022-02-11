Rails.application.routes.draw do
  get 'lists/new' => 'lists#new'
  get 'lists/index' => 'lists#index'
  get 'lists/show' => 'lists#show'
  get 'lists/edit' => 'lists#edit'
  get 'homes/top' => 'homes#top'
  post 'lists' => 'lists#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
