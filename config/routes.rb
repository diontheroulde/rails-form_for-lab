Rails.application.routes.draw do
  resources :school_classes, except: :destroy
  resources :students, except: :destroy
end
