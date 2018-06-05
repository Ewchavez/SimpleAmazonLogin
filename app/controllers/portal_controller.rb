class PortalController < ApplicationController
  def inicio
   a=session[:UsuarioComun]
    if  a==nil
      @usuario='Hola. Identifícate'
    else
      @usuario=  session[:UsuarioComun]

    end
  end

  def productos
  end
end
