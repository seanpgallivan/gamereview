class GenresController < ApplicationController

    def show
        @genre = Genre.find_by(slug: params[:slug])
    end

end
