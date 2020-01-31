class FlagsController < ApplicationController
    def index
        flags = Flag.all
        render json: flags
    end
end