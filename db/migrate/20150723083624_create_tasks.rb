class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :amount_raised
      t.string :int
      t.string :image
      t.boolean :dreamer
      t.boolean :complete
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
