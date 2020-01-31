class BansController < ApplicationController
    def index
        bans = Ban.all
        render json: bans
    end

    def create
        ban = Ban.new(ban_params)
        if ban.save
            render json: ban
        end
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
