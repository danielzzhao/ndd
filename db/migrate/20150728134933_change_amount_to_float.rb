class ChangeAmountToFloat < ActiveRecord::Migration
  def up
    change_column :tasks, :amount_raised, :float
    change_column :tasks, :total_amount, :float
  end
end
