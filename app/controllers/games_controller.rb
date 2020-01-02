class GamesController < ApplicationController

    def show
        @game = Game.find_by(slug: params[:slug])
    end

end
