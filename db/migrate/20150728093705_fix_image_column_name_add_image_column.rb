class FixImageColumnNameAddImageColumn < ActiveRecord::Migration
  def self.up
    rename_column :tasks, :image, :youtube_url
    add_column :tasks, :image, :string
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end