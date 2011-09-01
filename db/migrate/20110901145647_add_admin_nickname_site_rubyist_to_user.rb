class AddAdminNicknameSiteRubyistToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :admin, :default => false
      t.string :nickname
      t.string :name
      t.string :site
      t.string :rubyist_since
    end
  end
end

