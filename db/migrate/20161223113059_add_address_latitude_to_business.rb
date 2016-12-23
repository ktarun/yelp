class AddAddressLatitudeToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :address_latitude, :float
  end
end
