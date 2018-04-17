FactoryBot.define do
  factory :comment do
    content "Hip Hip Hooray!"
    association :user, factory: :user
    association :message, factory: :message
  end
end
