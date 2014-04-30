class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :numberofcourts, :integer
    add_column :users, :sponsorshiplevel, :integer
    add_column :users, :courtsname, :string
    add_column :users, :courtsaddress, :string
    add_column :users, :courtscity, :string
    add_column :users, :courtszip, :string
    add_column :users, :public, :integer
  end
end
