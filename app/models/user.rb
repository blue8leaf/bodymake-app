class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reports
  
  with_options presence: true do
    validates :nickname
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/.freeze
    validates_format_of :password, with: PASSWORD_REGEX
    validates :profile
    with_options format: { with: /\A\d{1,3}.\d{0,1}\z/ } do
      validates :body_height
      validates :objective_weight
    end
  end


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :age
end
