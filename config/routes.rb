Rails.application.routes.draw do
  root 'home#verify'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'verify' => 'home#verify', as: 'verify'
  post 'clue' => 'home#next_clue', as: 'next_clue'
  get  'clue' => redirect('verify')
end
