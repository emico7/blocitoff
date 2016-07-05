require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_user) { User.create!(username: "user1", email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }
  let(:my_item) { my_user.items.create!(name: "item1") }
  let(:my_item2) { my_user.items.create!(name: "item2") }

  describe "POST create" do

    it "increases the number of Item by 1" do
      expect{ post :create, user_id: my_user.id, item: {name: my_item.name} }.to change(Item,:count).by(1)
    end

    it "increases the sum of user items by 1" do
      count = my_user.items.count
      post :create, user_id: my_user.id, item_id: my_item2.id
      expect(my_user.items.count).to eq(count + 1)
    end
  end
end
