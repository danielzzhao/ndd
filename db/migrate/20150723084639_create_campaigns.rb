class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :image
      t.boolean :complete
      t.string :website

      t.timestamps null: false
    end
  end
end
