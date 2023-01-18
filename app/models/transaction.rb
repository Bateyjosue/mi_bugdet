class Transaction < ApplicationRecord
  belongs_to :category, class_name: "Category", foreign_key: "category_id"

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :image, presence: true

  def trans_total(category)
    total_price = Transaction.group(category).sun(:price)
    total_price
  end
end
