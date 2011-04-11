module ApplicationHelper
  require 'uri'
  def wiktionary_path(word)
    "http://en.wiktionary.org/wiki/#{URI.encode(word)}#Swedish"
  end

  @@table_col = {
    'Noun' => ['word', 'def', 'pl', 'defpl', 'hu'],
    'Verb' => ['inf', 'presens', 'imp', 'hu'],
    'Other' => ['word', 'hu']
  }

  def search_words(str)
    hits=[]
    @@table_col.each do |table, fields|
      fields.each do |field|
        h = eval <<-END
             #{table}.where("#{field} LIKE ?", "%#{str}%")
END
        hits += h
      end
    end

    (hits.sort_by {|hit| hit.word}).uniq
  end

  
end
