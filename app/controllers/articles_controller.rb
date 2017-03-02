class ArticlesController < ApplicationController

  #Get /articles
  def index
    @articles = Article.all
  end

  #Get /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:article][:title],
                                body: params[:article][:body])
  if @article.save

    redirect_to @article

  else
    render :new
  end
  end

  def update

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def article_param
    params.require(:article).permit(:title, :body)
  end


end
