class RenameRestaurantsToRestaurant < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :restaurants_id, :restaurant_id
  end
end
