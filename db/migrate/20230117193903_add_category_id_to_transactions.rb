class AddCategoryIdToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :category_id, :integer, foreign_key: true
    add_index :transactions, :category_id
    # add_reference :transactions, :category_id, foreign_key: true
  end
end
