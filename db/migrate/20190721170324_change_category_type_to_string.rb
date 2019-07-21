class ChangeCategoryTypeToString < ActiveRecord::Migration[5.1]
  def change
    change_column :expenses, :category, :string
  end
end
