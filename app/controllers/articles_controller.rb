class ArticlesController < ApplicationController


  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_article, except: [:index, :new, :create]

  #Get /articles
  def index
    @articles = Article.all
  end

  #Get /articles/:id

  def edit

  end

  def new
    @article = Article.new
  end

  def create
      if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def update


   if @article.update_attributes(article_param)
     redirect_to @article
   else
     render :edit
   end
  end

  def destroy

    @article.destroy
    redirect_to articles_path
  end

  private

  #def validate_user
  #redirect_to new_user_session_path, notice: "You must have a session"
  #end

  def set_article
    @article = Article.find(params[:id])
  end

  def article_param
    params.require(:article).permit(:title, :body)
  end


end

