class AddTwitterToUser < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
  end
end

