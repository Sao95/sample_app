Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  
  # .../todolists/1 や .../todolists/3 に該当する
  #ルーティングを追加 URLの部分は、todolists/:id(idの前に :（コロン）をつける）
  get 'todolists/:id' => 'todolists#show', as: 'todolist' #as: '名前' は名前付きルート
end
