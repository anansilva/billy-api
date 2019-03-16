class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.float :amount
      t.datetime :expense_date
      t.string :description
      t.integer :category

      t.timestamps
    end
  end
end
