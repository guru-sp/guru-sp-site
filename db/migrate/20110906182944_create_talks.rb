class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.string :presenter_name
      t.string :presenter_twitter
      t.string :slides_link
      t.string :video_link

      t.timestamps
    end
  end
end
