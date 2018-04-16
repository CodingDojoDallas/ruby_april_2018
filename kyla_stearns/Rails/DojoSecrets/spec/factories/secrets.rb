FactoryBot.define do
  factory :secret do
    content "MyLittleSecret"
    association :user, factory: :user
  end
end
