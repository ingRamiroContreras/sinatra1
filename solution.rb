require "sinatra"

get '/' do
    if params[:nombre] == ''
        @nombre = "Desconocido"
    else
        @nombre = params[:nombre].capitalize
    end
    erb :index
end

get '/makers/:nombre' do
    if params[:nombre] == ''
        @nombre = "Desconocido"
    else
        @nombre = params[:nombre].capitalize
    end
    erb :index
end