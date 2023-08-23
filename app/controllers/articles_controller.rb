class ArticlesController < ApplicationController
  def show
    @article  =  Article.find(params[:id])
  end

  def index
    @articles  =  Article.all
  end
  
  def new
    @article  =  Article.new()  #initializing article for the first time
  end
  
  def edit
    @article  =  Article.find(params[:id])
  end
  
  def create
    @article=Article.new(params.require(:article).permit(:title, :description))
    # in require we need to give top level key of db, then permiting it 
    # for giving title decription as params
    # render plain: @article.inspect
    
    if @article.save
      flash[:notice] = "Article was Created Successfully"
      redirect_to article_path(@article) #redirecting to show action for listing all articles
    #rails automatically extract the id from the @article obj
    else
      render 'new'  
    end

    def update
    #   @article = Article.find(params[:id])
      if @article.update(params.require(:article).permit(:title, :description))
        flash[:notice] = "Article was updated Successfully"
        redirect_to article_path(@article)
      end
        render 'edit'
    end
  end
end     