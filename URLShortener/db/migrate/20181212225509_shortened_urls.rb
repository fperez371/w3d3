class ShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortenedurls do |t|
      t.string :short_url
      t.string :long_url
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index 
  end
  end
end
