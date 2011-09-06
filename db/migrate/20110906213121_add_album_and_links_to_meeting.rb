class AddAlbumAndLinksToMeeting < ActiveRecord::Migration
  def change
    change_table :meetings do |t|
      t.string :album_id
      t.string :agendatech_link
      t.string :call4paperz_link
      t.string :rubyist_since
    end
  end
end

