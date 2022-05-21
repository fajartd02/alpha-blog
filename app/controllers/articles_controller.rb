class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new  # Supaya gak dapet errors karena errors.any di views
  end

  def create
    # render plain: params[:article] -> Cara Debug
    @article = Article.new(params.require(:article).permit(:title, :description, :theme)) # strong params
    # render plain: @article.inspect -> Cara Debug
    if @article.save
      # redirect_to article_path(@article) # Auto Extract the id
      redirect_to @article # Shortcut for the above code
    else
      render 'new'
    end
  end
end