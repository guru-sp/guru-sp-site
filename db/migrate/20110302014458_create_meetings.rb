class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
