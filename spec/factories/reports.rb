FactoryBot.define do
  factory :report do
    registration_date { Date.today}
    body_weight { '50.1' }
    body_fat { '30.1' }
    body_bust { '85.4' }
    body_arm { '26.5' }
    body_west { '68.1' }
    body_belly { '77.3' }
    body_hip { '80.3' }
    body_thigh { '54.2' }
    body_calf { '32.2' }
    body_ankle { '18.5' }
    association :user

    after(:build) do |report|
      report.image.attach(io: File.open('public/images/diet_before_woman.png'), filename: 'diet_before_woman.png')
    end
  end
end
