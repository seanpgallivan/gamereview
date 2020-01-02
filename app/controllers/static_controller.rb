class StaticController < ApplicationController

    def welcome
        render :welcome
    end

    def search
        render :search
    end

    def results
        flash[:search] = "search results"
        render :search
    end

end