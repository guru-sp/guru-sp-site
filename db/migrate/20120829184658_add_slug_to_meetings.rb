class AddSlugToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :slug, :string
    add_index :meetings, :slug, :unique => true
    
    # updates all meetings to create a slug
    Meeting.find_each(&:save)
  end
end
