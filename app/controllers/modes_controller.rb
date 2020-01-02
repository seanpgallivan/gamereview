class ModesController < ApplicationController

    def show
        @mode = Mode.find_by(slug: params[:slug])
    end

end
