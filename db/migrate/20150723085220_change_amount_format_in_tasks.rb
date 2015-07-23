class ChangeAmountFormatInTasks < ActiveRecord::Migration
def change
	change_column :tasks, :amount_raised, :int
	remove_column :tasks, :int, :string
end
end
