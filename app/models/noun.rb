class Noun < ActiveRecord::Base
  def cite
    "#{oart} #{word}"
  end
end
