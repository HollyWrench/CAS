class AddTicketsCountToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :tickets_count, :integer, default: 1
  end
end
