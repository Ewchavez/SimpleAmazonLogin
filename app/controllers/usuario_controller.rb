class UsuarioController < ApplicationController

  def generar(msg)
  clave='.-Servidor123'
  variableA=Digest::SHA1.hexdigest(msg + clave)
  return variableA
  end



  def activarsesion(usuario)
    session[:UsuarioComun]=usuario

  end

  def logeo
    correo=params["email"]
    contraseña=params["password"]
    sobrecontraseña=generar(contraseña)


     buscarU=User.find_by(email:correo)
        if  User.find_by(email: correo , contrasenia:sobrecontraseña)

            activarsesion(buscarU.nombre)


            redirect_to('/portal/inicio')  and return




          else
                @arregla = 'Contraseña mal ingresada/ usuario no existe'
                render '/usuario/login'


        end

  end


  def registro


  end





  def registrar
     nombreUsuario=params["customerName"]
     correo=params["email"]

     contraseña=params["password"]

     sobrecontraseña=generar(contraseña)

     buscarU=User.find_by(email:correo)
     if buscarU==nil
     nuevoUsario=User.create(nombre:nombreUsuario,email:correo,contrasenia:sobrecontraseña)
     nuevoUsario.save
     activarsesion(nombreUsuario)
     redirect_to '/portal/inicio'
     else
       @mensajeUsuario="Ingrese  otro correo"
       render '/usuario/registro'
     end


  end







  def login


  end












end
