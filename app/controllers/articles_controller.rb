class ArticlesController < ApplicationController
  def show
    
    # @ creates an instance variable and accessable outside controller
    @article = Article.find(params[:id])
  end

end
