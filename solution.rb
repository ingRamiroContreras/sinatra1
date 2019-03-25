require "sinatra"

#get '/' do
#    if params[:nombre] == ''
#        @nombre = "Desconocido"
#    else
#        @nombre = params[:nombre].capitalize
#    end
#    erb :index
#end

get "/" do
  erb :index
end

post "/saludar" do
  @nombre = params["nombre"]
  erb :saludar
end

get "/makers/:nombre" do
  if params[:nombre] == ""
    @nombre = "Desconocido"
  else
    @nombre = params[:nombre].capitalize
  end
  erb :index
end
