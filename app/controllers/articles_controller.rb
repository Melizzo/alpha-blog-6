class ArticlesController < ApplicationController
  def show
    # @ creates an instance variable and accessable outside controller
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new 
    # This is used for instant creation of a new article, to pass in the new.html.erb if error handing function - otherwise error, since the error will have a nil value. 
    @article = Article.new
  end

  def create 
  #  We need to save the article to the articles table - so we need it to an instance, as we'll be using the variable in other parts of the code.
  # we are telling it to allow the article key, with the title & description to be used to create the article object. 
    @article = Article.new(params.require(:article).permit(:title, :description))
          if @article.save
        # flash is a object - rails helper
        flash[:notice] = "Article was saved successfully"
        # rails knows to redirect to show page for the article.
        redirect_to @article
      else 
        render 'new'
      end
  end

end
