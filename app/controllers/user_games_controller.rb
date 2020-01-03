class UserGamesController < ApplicationController
    before_action :require_login, only: [:show, :new, :create, :edit, :update, :destroy]
    before_action :find_ug, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @ug = UserGame.new
    end

    def create
        if UserGame.find_by(user_id: @user.id, game_id: params[:user_game][:game_id])
            flash[:message] = ["You already have a game page for this game."]
            redirect_to new_played_path
        else
            @ug = UserGame.new(ug_params)
            if @ug.save
                redirect_to played_path(slug: @ug.game.slug)
            else
                render :new
            end
        end
    end

    def edit
    end

    def update
        @ug.update_attributes(ug_params)
        if @ug.save
            redirect_to played_path(slug: @ug.game.slug)
        else
            render :edit
        end
    end

    def destroy
        @ug.destroy
        redirect_to home_path
    end

    private

    def ug_params
        params[:user_game][:user_id] = session[:user_id]
        params[:user_game][:game_id] ||= @ug.game.id
        params.require(:user_game).permit(:game_id, :user_id, :rating, :review, :hours_played)
    end

    def find_ug
        @ug = UserGame.find_by(user_id: @user.id, game_id: Game.find_by(slug: params[:slug]).id)
    end

end
