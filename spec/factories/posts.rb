FactoryGirl.define do 
  factory :post do
    date Date.today
    rationale "Some rationale"
    overtime_request 1.2
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    overtime_request 0.3
    user
  end

  factory :post_from_non_authorized_user, class: "Post" do
    date Date.yesterday
    rationale "Non Auhtorized Post"
    overtime_request 1.2
    non_authorized_user
  end
end