Rails.application.routes.draw do
  root 'panels#index'

  post '/api', to: 'vacancies#insert'

  resources :dashboards
end
