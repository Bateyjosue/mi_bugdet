class Transaction < ApplicationRecord
  belongs_to :transaction, class_name: "Transaction", foreign_key: "category_id"
end
