class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    redirect_to '/nouns/'
  end

end
