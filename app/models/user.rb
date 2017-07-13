class User < ActiveRecord::Base
  def mood
    @mood ||= EmotionalBreakdown.request(self.thoughts)
  end

end
