class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    
  end

  def create
    # render plain: params[:article] -> Cara Debug
    @article = Article.new(params.require(:article).permit(:title, :description)) # strong params
    # render plain: @article.inspect -> Cara Debug
    @article.save
    redirect_to article_path(@article) # Auto Extract the id
  end
end