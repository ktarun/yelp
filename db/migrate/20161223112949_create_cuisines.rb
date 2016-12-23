class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.integer :tag_id
      t.integer :businesses_id

      t.timestamps

    end
  end
end
