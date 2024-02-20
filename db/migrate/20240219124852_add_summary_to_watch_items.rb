class AddSummaryToWatchItems < ActiveRecord::Migration[7.1]
  def change
    add_column :watch_items, :summary, :text
  end
end
