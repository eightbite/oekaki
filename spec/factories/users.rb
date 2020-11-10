FactoryBot.define do
  factory :user do
    Faker::Config.locale = :ja
    nickname              {Faker::Name.initials(number: 4)}
    email                 {Faker::Internet.free_email}
    password              {"000aaa"}
    password_confirmation {password}

    after(:build) do |item|
      item.image.attach(io: File.open('public/花譜.jpeg'), filename: '花譜.jpeg')
    end
  end
end