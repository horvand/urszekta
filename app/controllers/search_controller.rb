class SearchController < ApplicationController
  include ApplicationHelper

  def search_all
    query = params[:q]
    @hits = search_words(query)
    if @hits.size == 1
      hit = @hits[0]
      type = hit.class.table_name
      redirect_to "/#{type}/#{hit.id}"
    end
  end

end
