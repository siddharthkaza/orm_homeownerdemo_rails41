class CreateHomesOwners < ActiveRecord::Migration
  def up
    create_table :homes_owners, :id=>false do |t|
      t.column :home_id, :integer
      t.column :owner_id, :integer
    end
  end

  def down
    drop_table :homes_owners
  end
end
