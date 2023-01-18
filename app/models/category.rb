class Category < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  has_many :transactions

  validates :name, presence: true
  validates :user_id, presence: true
  validates :user_id, presence: true
  validates :image, presence: true

  def total_pric category_id
    category = Category.includes(:transactions).find(category_id)
    total = category.transactions.sum(:price)

    total
  end
end
