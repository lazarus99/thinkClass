class ArticlesController < ApplicationController
  def index
    @articles = Article.order(updated_at: :desc).limit(25)
  end
  
  def show
    @articles = Article.find(params[:id])
  end

  def new
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render "new"
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :content, :categor_ids=>[])
  end

  def create
  end

end