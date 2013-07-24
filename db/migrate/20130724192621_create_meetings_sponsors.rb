class CreateMeetingsSponsors < ActiveRecord::Migration
  def change
  	create_table :meetings_sponsors do |t|
  	  t.belongs_to :meeting
  	  t.belongs_to :sponsor
  	end  
  end
end
