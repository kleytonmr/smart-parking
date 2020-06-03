Rails.application.routes.draw do
  root 'vacancies#index'

  post '/api', to: 'vacancies#insert'

  resources :vacancies
end
