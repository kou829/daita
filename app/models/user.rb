class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to_active_hash :age
         belongs_to_active_hash :sex

         validates :nickname, presence: true
         validates :sex, presence: true
         validates :age, presence: true
         validates :profile, presence: true
end
