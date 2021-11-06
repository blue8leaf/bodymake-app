FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password { 'aaaa0000' }
    password_confirmation { password }
    body_height_id { 154 }
    objective_weight_id { 45 }
    profile {'よろしくお願い致します。'}
    gender_id { Gender.find_by(name: '女').id }
    age_id { Age.find_by(name: '20').id }
  end
end