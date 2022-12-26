class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.count < 2
      stark.safe = true
      @starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect.empty?
      true
    else
      false
    end
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect.delete(stark)
  end

end

class Stark
  attr_reader :name,
              :location,
              :house_words
  attr_accessor :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

end