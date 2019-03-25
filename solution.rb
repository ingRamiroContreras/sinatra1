require "sinatra"

get '/' do
    if params[:nombre] == ''
        @nombre = "desconocido"
    else
        @nombre = params[:nombre]
    end
    erb:index
end