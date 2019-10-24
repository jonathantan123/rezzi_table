class AddFoodServiceAndDecorColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :food_rating, :integer
    add_column :reviews, :decor_rating, :integer
    add_column :reviews, :service_rating, :integer
  end
end
