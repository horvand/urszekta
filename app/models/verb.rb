class Verb < ActiveRecord::Base
  def word
    self.inf
  end
  def word=(x)
    self.inf=x
  end

end
