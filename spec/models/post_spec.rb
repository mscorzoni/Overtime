require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
    before do
      @user = User.create(email: "test@test.com", password: "111111", password_confirmation: "111111", first_name: "Jon", last_name: "Snow")
      login_as(@user, :scope => :user)
      @post = FactoryGirl.create(:post)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end
    it 'cannot be created without a date and a rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
