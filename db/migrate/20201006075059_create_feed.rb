class CreateFeed < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.string :title, null: false
      t.string :language
      t.timestamp :published_date
      t.string :generator
      t.string :image_url

      t.timestamps
    end
  end
end
