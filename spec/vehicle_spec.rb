require('rspec')
require('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns the make of the car') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.make()).to(eq('Ford'))
    end
  end

  describe('#model') do
    it('it returns the model of the car') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.model()).to(eq('Taurus'))
    end
  end

  describe('#year') do
    it('returns the year of the car') do
      test_vehicle = Vehicle.new('Ford','Taurus',2000)
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe('#save') do
    it('it adds a vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all the saved vehicles from the class array') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      test_vehicle.save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#age') do
    it('returns the vehicles age') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe('#worth_buying') do
    it('returns false if the car is not American and less than 15 years old') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)

      expect(test_vehicle.worth_buying?()).to(eq(true))
    end
  end

end
