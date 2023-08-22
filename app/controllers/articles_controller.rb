class ArticlesController < ApplicationController
    def index
        # @articles    =   Article.all()
        @article    =   Article.find(params[:id])
    end
    
    def index
        @articles   =   Article.all
    end
end     