class ArticlesController < ApplicationController
  def create
    # raise
    @article = Article.new(article_params)
    @article.save
    raise
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def article_params
    raise
    params.require(:article).permit(params[:title], params[:content])
  end
end
