class BanController < ApplicationController
    def index
        bans = Ban.all
        render json: bans
    end

    def show
        ban = Ban.find_by(UUID: params[:uuid])
        render json: ban
    end

    def create
        ban = Ban.new(ban_params)
    end

    private
    
    def ban_params
        params.require(:ban).permit(
            :UUID, 
            :username, 
            :ip, 
            :reason, 
            :duration
        )
    end
end
