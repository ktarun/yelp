class AddAddressLongitudeToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :address_longitude, :float
  end
end
