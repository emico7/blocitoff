require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_user) { create(:user) }
  let(:my_item) { create(:item) }

  describe "POST create" do

    it "increases the number of Item by 1" do
      expect{ post :create, user_id: my_user.id, item: {name: my_item.name} }.to change(Item,:count).by(1)
    end

    it "increases the sum of user items by 1" do
      count = user_item.count
      post :create, item_id: user_item.id
      expect(user_item.count).to eq(count + 1)
    end

  end
end
