class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :categories
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable # , :confirmable

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
