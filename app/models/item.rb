class Item < ActiveRecord::Base
  belongs_to :user

  def time_left
    # (subtract time_remaining from the current DateTime) in days
  end
end
