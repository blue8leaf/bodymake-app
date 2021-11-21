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
  validate :cannot_future, on: :create
  validate :cannot_past, on: :create

  def cannot_future
    if registration_date.present? && registration_date.future?
      errors.add(:registration_date, "を入力してください")
    end
  end

  def cannot_past
    if registration_date.present? && registration_date.past?
      errors.add(:registration_date, "を入力してください")
    end
  end
end
