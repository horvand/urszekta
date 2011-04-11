module ApplicationHelper
  require 'uri'
  def wiktionary_path(word)
    "http://en.wiktionary.org/wiki/#{URI.encode(word)}#Swedish"
  end
end
