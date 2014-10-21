class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships, :id=>false do |t|
      t.column :owner_id, :integer
      t.column :home_id, :integer
      t.column :bought, :string
      t.timestamps
    end
  end
end
