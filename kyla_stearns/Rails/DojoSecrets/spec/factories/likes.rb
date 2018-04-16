FactoryBot.define do
  factory :like do
    association :user, factory: :user
    association :secret, factory: :secret
  end
end
