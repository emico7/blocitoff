class Item < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :time_remaining, presence: true, numericality: { only_integer: true }

  def time_left
    self.time_remaining - (DateTime.now.to_date - created_at.to_date).to_i
  end
end
