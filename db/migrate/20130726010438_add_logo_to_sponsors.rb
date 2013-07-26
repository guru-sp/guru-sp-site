class AddLogoToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :logo, :string
  end
end
