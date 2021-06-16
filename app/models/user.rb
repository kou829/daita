class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to_active_hash :age
         belongs_to_active_hash :sex

         with_options presence: true do
          with_options numericality: { other_than: 1 } do
           validates :sex
           validates :age
          end
          validates :nickname
          validates :profile
         end
end
