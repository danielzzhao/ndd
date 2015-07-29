class AddTotalAmountToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :total_amount, :int
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
