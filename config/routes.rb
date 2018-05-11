Rails.application.routes.draw do
  resources :posts
  resources :pages

  get    '/posts/:post_id/comments',          to: 'comments#index', as: 'post_comments'
  post   '/posts/:post_id/comments',          to: 'comments#create'
  get    '/posts/:post_id/comments/new',      to: 'comments#new',   as: 'new_post_comment'
  get    '/posts/:post_id/comments/:id',      to: 'comments#show',  as: 'post_comment'
  get    '/posts/:post_id/comments/:id/edit', to: 'comments#edit',  as: 'edit_post_comment'
  patch  '/posts/:post_id/comments/:id',      to: 'comments#update'
  delete '/posts/:post_id/comments/:id',      to: 'comments#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end