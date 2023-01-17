class Category < ApplicationRecord
  belongs_to :user, class_name: "users", foreign_key: "user_id"

  validates :name, presence: true
  validates :user_id, presence: true
  validates :user_id, presence: true
  validates :image, presence: true
end
