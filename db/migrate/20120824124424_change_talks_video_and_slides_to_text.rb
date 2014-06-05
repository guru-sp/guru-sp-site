class ChangeTalksVideoAndSlidesToText < ActiveRecord::Migration
  def change
    change_table :talks do |t|
      t.change :slides_link, :text
      t.change :video_link, :text
    end
  end
end
