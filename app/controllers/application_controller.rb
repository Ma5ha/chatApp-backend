class ApplicationController < ActionController::API

    def index 


        rooms= Room.all

        render json: rooms , indlude: "**"
    end


    def create
         if room= Room.find_by(name: params[:name]) === nil
            room= Room.create(name: params[:name])
         else
            room = Room.find_by(name: params[:name])
         end
         ActionCable.server.broadcast 'rooms_channel', room
    end
    
end
