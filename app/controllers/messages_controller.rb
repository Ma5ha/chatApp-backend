class MessagesController < ApplicationController
    def index
        messages = Messege.all
        render json: messages
    
    end

    def create
        message = Messege.create(message:params[:message], author:params[:author])
        #render json: message
        ActionCable.server.broadcast 'messages_channel', message
    end
end
