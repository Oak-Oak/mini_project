class RemoveCompletedFromWatchItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :watch_items, :completed
  end
end
