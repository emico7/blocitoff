require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(username: "user1", email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }
  let(:item) { user.items.create!(name: "item1") }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has name and user attributes" do
      expect(item).to have_attributes(name: item.name)
    end
  end
end
