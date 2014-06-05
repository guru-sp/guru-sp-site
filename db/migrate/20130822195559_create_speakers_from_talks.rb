class CreateSpeakersFromTalks < ActiveRecord::Migration
  def up
  	Talk.find_each do |talk|
  		speaker = Speaker.find_or_create_by_name_and_twitter(
  			name: talk.presenter_name,
  			twitter: talk.presenter_twitter
  		)
      talk.speakers << speaker
      talk.save
  	end

  	remove_column :talks, :presenter_name
  	remove_column :talks, :presenter_twitter
  end

  def down
  	add_column :talks, :presenter_name, :string
  	add_column :talks, :presenter_twitter, :string
  end
end
