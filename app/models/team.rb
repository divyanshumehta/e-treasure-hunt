class Team < ApplicationRecord
  before_create :set_score
  def set_score
    self.score=0
  end
end
