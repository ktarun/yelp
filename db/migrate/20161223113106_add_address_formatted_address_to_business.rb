class AddAddressFormattedAddressToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :address_formatted_address, :string
  end
end
