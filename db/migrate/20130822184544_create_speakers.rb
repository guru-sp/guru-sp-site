class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :nickname
      t.string :twitter

      t.timestamps
    end
  end
end
