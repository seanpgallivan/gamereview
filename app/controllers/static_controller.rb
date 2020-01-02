class StaticController < ApplicationController

    def welcome
        render :welcome
    end

    def search
        render :search
    end

    def results
        flash[:search_games] = Game.where("title like ?", "%#{params[:q]}%").limit(10).map {|game| {title: game.title, slug: game.slug}}
        flash[:search_genres] = Genre.where("name like ?", "%#{params[:q]}%").limit(5).map {|genre| {name: genre.name, slug: genre.slug}}
        flash[:search_modes] = Mode.where("name like ?", "%#{params[:q]}%").map {|mode| {name: mode.name, slug: mode.slug}}
        redirect_to search_path
    end

end