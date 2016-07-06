require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(username: "user1", email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }

  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "should have username, email, password and password_confirmation attributes" do
      expect(user).to have_attributes(username: user.username, email: user.email, password: user.password, password_confirmation: user.password_confirmation)
    end
  end
end
