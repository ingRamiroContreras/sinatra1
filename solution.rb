require "sinatra"

#get '/' do
#    if params[:nombre] == ''
#        @nombre = "Desconocido"
#    else
#        @nombre = params[:nombre].capitalize
#    end
#    erb :index
#end

#get "/" do
#  "HcUy6Re2LLBRtj"
#end
#get "/" do
#  erb :index
#end

get "/" do
  @numeros = []
  50.times do |i|
    if ((i + 1) % 2) == 0
      @numeros << (i + 1).to_s + " Soy par!"
    else
      @numeros << (i + 1).to_s + " Soy Impar!"
    end
  end
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
