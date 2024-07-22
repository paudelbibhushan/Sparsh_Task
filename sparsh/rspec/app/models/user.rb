class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :phone_number, numericality: true, presence: true, length: { is: 10 }
  validates :email, uniqueness: true
  has_many :posts, dependent: :destroy
end
