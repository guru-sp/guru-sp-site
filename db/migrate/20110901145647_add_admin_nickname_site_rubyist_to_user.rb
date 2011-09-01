class AddAdminNicknameSiteRubyistToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :admin, :default => false
      t.text :nickname
      t.text :name
      t.text :site
      t.string :rubyist_since
    end
  end
end

