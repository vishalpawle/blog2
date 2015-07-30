class ArticlesController < ApplicationController
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
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(vishal_secure)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(vishal_secure)
      redirect_to @article
    else
      render 'edit'
    end
  end
private
  def vishal_secure
    params.require(:article).permit(:subject, :content)

  end


end
