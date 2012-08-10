class AddVisibleBooleanToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :visible, :boolean
  end
end
