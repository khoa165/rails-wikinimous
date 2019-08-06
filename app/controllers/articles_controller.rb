class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = article.all
  end

  def show
  end

  def new
    @article = article.new
  end

  def create
    new_article = article.create(article_strong_params)
    redirect_to new_article_path(new_article)
  end

  def edit
  end

  def update
    @article.update(article_strong_params)
    redirect_to new_article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_strong_params
    params.require(:article).permit(:title, :details, :completed)
  end

  def find_article
    @article = article.find(params[:id].to_i)
  end
end
