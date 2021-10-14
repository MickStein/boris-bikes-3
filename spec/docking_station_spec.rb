require 'docking_station'

describe DockingStation do

    it 'releases a bike' do
      bike = Bike.new
      station = DockingStation.new
      station.dock(bike)
      expect(station.release_bike).to eq (bike)
    end

    it 'releases a working bike' do
      
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'docks the bike' do
      
      station = DockingStation.new
      bike = Bike.new

      expect(station.dock(bike)).to eq bike

    end

    it 'checks if any bikes docked' do
      station = DockingStation.new
      bike = Bike.new
      
      station.dock(bike)

      expect(station.has_bike?).to eq true
    end

    it 'checks if no bikes available' do
      station = DockingStation.new
      bike = Bike.new

      expect(station.has_bike?).to eq false
    end

end