class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :bio
      t.string :image

      t.timestamps null: false
    end
  end
end
