class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.integer :business_id
      t.integer :user_id
      t.string :photo

      t.timestamps

    end
  end
end
