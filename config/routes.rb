Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => "feeds#index"
  post '/', to: 'feeds#import'
end
