class AddWatchItems < ActiveRecord::Migration[7.1]
  def change
    add_column :watch_items, :completed, :boolean, default: false
  end
end
