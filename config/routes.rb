Rails.application.routes.draw do

root 'welcome#homepage'
get 'welcome/homepage'

resources :countries, only: [:index, :show]

end
