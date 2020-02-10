class AddRouteIdToStops < ActiveRecord::Migration[6.0]
  def change
    add_column :stops, :route_id, :integer
  end
end
