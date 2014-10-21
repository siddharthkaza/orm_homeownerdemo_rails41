class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.timestamps
    end
  end
end

