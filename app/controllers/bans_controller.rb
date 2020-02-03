class BansController < ApplicationController
    def index
        bans = Ban.all
        render json: bans
    end

    def create
        ban = Ban.new(ban_params)
        if ban.save
            # flagExistsCheck = Flag.all.filter(f => f.uuid === ban.uuid)
            # if flagExistsCheck < 1
            #     secondReportCheck = Ban.all.filter(b => b.uuid === ban.uuid)
            #     if secondReportCheck > 0
            #         Flag.create(uuid: ban.uuid)
            #     end
            # end
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
