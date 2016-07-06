require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "should have username, email, password and password_confirmation attributes" do
      expect(user).to have_attributes(username: user.username, email: user.email, password: user.password, password_confirmation: user.password_confirmation)
    end
  end
end
