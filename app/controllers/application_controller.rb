class ApplicationController < ActionController::Base
    before_action :set_search

    def set_search
    @search=Game.search(params[:q])
    end
end
