class AddTimeRemainingToItems < ActiveRecord::Migration
  def change
    add_column :items, :time_remaining, :integer
  end
end
