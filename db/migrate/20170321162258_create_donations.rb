class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.string :reference
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
