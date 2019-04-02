Rails.application.routes.draw do
  root 'producto#index'
  get 'producto/nuevo'
  post 'producto/crear'
  get 'producto/:id/editar', to:'producto#editar', as:'producto_editar'
  patch 'producto/:id', to:'producto#actualizar', as:'producto_actualizar'
  delete 'producto/:id', to:'producto#eliminar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
