class AddMeetingReferenceToTalk < ActiveRecord::Migration
  def change
    change_table :talks do |t|
      t.references :meeting
    end
  end
end

