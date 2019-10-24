class AddRestaurantDescriptionToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :description, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :price_range, :string
    add_column :restaurants, :neighborhood, :string
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :image, :string
  end
end
