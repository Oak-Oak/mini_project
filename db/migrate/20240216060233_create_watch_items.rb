class CreateWatchItems < ActiveRecord::Migration[7.1]
  def change
    create_table :watch_items do |t|
      t.string :title
      t.string :genre

      t.timestamps
    end
  end
end
