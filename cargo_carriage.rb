class CargoCarriage < Carriage

  def initialize(number, place)
    super(number, :cargo, place)
  end

  def occupy_place(place)
    raise "Недостаточно места" if free_place - place < 0
    super(place)
  rescue Exception => e
    puts e.message
  end
end
