class Spin < ActiveRecord::Base
  belongs_to :feeling

  def number_of_sections
    self.feeling.activities.length
  end
end
