require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
    before do
      @user = User.create(email: "test@test.com",
                          password: "111111",
                          password_confirmation: "111111",
                          first_name: "Jon",
                          last_name: "Snow",
                          phone: '5555555555')
      login_as(@user, :scope => :user)
      @post = FactoryGirl.create(:post)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end
    it 'cannot be created without a date, daily_hours and a work_performed' do
      @post.date = nil
      @post.work_performed = nil
      @post.daily_hours = nil
      expect(@post).to_not be_valid
    end

    it 'has an daily_hours greater than 0.0' do
      @post.daily_hours = 0.0
      expect(@post).to_not be_valid
    end
  end
end
