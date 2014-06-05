class RemoveRubyistAddVenueIdToMeeting < ActiveRecord::Migration
  def change
  	remove_column :meetings, :rubyist_since, :string
    change_table :meetings do |t|
      t.references :venue
    end
  end
end
