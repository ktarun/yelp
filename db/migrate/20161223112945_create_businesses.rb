class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :address
      t.string :name
      t.text :description
      t.string :website
      t.string :cover_photo
      t.integer :ownership_id

      t.timestamps

    end
  end
end
