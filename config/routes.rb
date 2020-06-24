Rails.application.routes.draw do
  # トップページ
  root 'studios#index'

  resources :studios, only: %i[index show]
  devise_for :users

  # LetterOpenerWeb::Engineをマウントする
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
