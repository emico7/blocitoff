namespace :todo do
  desc "Delete items that are over due"
  task delete_items: :environment do
    Item.find_each do |item|
      if (item.created_at - item.time_remaining) > Time.now
        item.destroy
      else
        break
      end
    end
  end
end


=begin
namespace :todo do
  desc "Delete items that are over due"
  task delete_items: :environment do
    Item.each do |item|
      Item.where("created_at <= ?", Time.now - item.time_remaining).destroy_all
    end
  end
end
=end
