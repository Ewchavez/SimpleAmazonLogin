Rails.application.routes.draw do
  get 'portal/inicio'

  get 'portal/productos'

  get 'usuario/login'

  get 'usuario/registro'

  post 'usuario/registrar'
  post 'usuario/logeo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
