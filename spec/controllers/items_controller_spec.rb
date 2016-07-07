require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_user) { create(:user) }
  let(:my_item) { create(:item, user: my_user) }
  let(:my_item2) { create(:item, user: my_user) }

  describe "POST create" do

    it "increases the number of Item by 1" do
      expect{ post :create, format: :js, user_id: my_user.id, item: {name: my_item.name} }.to change(Item,:count).by(1)
    end

    it "increases the sum of user items by 1" do
      count = my_user.items.count
      post :create, format: :js, user_id: my_user.id, item_id: my_item2.id
      expect(my_user.items.count).to eq(count + 1)
    end
  end

  describe "DELETE destroy" do
    it "deletes the item" do
      delete :destroy, format: :js, user_id: my_user.id, id: my_item.id
      count = Item.where({id: my_item.id}).count
      expect(count).to eq(0)
    end

    it "returns http success" do
      delete :destroy, format: :js, user_id: my_user.id, id: my_item.id
      expect(response).to have_http_status(:success)
    end
  end
end
