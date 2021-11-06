class Report < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options format: { with: /\A\d{1,3}.\d{0,1}\z/ } do
    validates :body_weight, presence: true
    with_options allow_blank: true do
      validates :body_fat
      validates :body_bust
      validates :body_arm
      validates :body_west
      validates :body_belly
      validates :body_hip
      validates :body_thigh
      validates :body_calf
      validates :body_ankle
    end
  end

  validates :image, presence: true
  validates :registration_date, presence: true
  validates :registration_date, uniqueness: true, on: :create
  validate :cannot_future, on: :create

  def cannot_future
    if registration_date.present? && registration_date > Date.today
      errors.add(:registration_date, "can not specify your future date")
    end
  end
end
