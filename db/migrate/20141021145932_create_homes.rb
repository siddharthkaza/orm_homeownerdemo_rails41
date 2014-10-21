class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.column :number, :integer
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.timestamps
    end
  end
end
