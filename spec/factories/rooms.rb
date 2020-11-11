FactoryBot.define do
  factory :room do
    Faker::Config.locale = :ja
    name                  {Faker::Name.initials(number: 4)}
    purpose_id            {Faker::Number.between(from: 1, to: 3)}
    password              {Faker::Name.initials(number: 4)}
    association :user
  end
end