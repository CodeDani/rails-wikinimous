class ArticlesController < ApplicationController
    # create
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to index_path
  end

  # read
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # update
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to index_path
  end

  # delete
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to index_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :completed)
  end
end
