class CreateSpeakersTalksJoinTable < ActiveRecord::Migration
  def change
  	create_table :speakers_talks, id: false do |t|
  		t.integer :speaker_id
  	  t.integer :talk_id
    end
	end
end
