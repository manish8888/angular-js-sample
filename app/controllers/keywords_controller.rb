class KeywordsController < ApplicationController 
  
  def index
  	@keywords = Keyword.all
  end

  def create
    @keyword = Keyword.new(keyword_params)
    flash[:notice] = 'Keyword was successfully reset'
    unless params[:commit] == 'RESET'
      if @keyword.save
        @keyword.assign_user(current_user)
        flash[:notice] = 'Keyword was successfully created.'
        @keyword = Keyword.new
      end
    end
    load_keywords
    render 'create_or_update'
  end

  private

  def load_keywords
  	@keywords = Keyword.all
  end

  def keyword_params
    params.require(:keyword).permit(:keyword)
  end

end