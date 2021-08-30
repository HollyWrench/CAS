class CreateFeedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :feed_items do |t|
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
