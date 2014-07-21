class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date_start
      t.datetime :date_end
      t.string :image_url
      t.timestamps
    end
  end
end
