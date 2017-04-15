class Route < ActiveRecord::Base
  has_many(
    :buses,
    class_name: "Bus",
    foreign_key: :route_id,
    primary_key: :id
  )

  def n_plus_one_drivers
    buses = self.buses

    all_drivers = {}
    buses.each do |bus|
      drivers = []
      bus.drivers.each do |driver|
        drivers << driver.name
      end
      all_drivers[bus.id] = drivers
    end

    all_drivers
  end

  def better_drivers_query
    buses_and_drivers = self.buses.joins(:drivers).select("buses.id AS bus_num, drivers.name AS driver_name")
    all_drivers = Hash.new { [] }
    buses_and_drivers.each do |col|
      all_drivers[col.bus_num] += [col.driver_name]
    end
    all_drivers
  end
end
