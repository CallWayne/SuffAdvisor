class AddLatitudeLongitudeToDiscotheks < ActiveRecord::Migration
  def change
    add_column :discotheks, :latitude, :float
    add_column :discotheks, :longitude, :float
  end
end
