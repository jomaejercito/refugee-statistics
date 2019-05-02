Rails.application.routes.draw do

root 'welcome#homepage'
get 'welcome/homepage'

resources :hosting_countries, only: [:index, :show]
resources :origin_countries, only: [:index, :show]

end
