class CreateItem < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :description
      t.timestamp :published_date
      t.string :link
      t.integer :episode
      t.string :keywords
      t.float :duration
      t.string :link_to_audio

      t.timestamps
    end
  end
end
