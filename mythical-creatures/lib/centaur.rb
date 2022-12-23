class Centaur
  attr_reader :name, :breed, :standing

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @shots = 0
    @runs = 0
    @sick = false
  end

  def shoot
    if @shots < 3 && @standing
      @shots += 1
      'Twang!!!'
    else
      'NO!'
    end
  end

  def run
   if @standing
    @runs += 1
    'Clop clop clop clop!'
   else
    'NO!'
   end
  end

  def cranky?
    check_cranky
    # @cranky
  end

  def check_cranky
    if @shots + @runs >= 3
      @cranky = true
    else
      @cranky = false
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      'NO!'
    else
      @shots = 0
      @runs = 0
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drink_potion
   if @cranky == false && @standing
    @sick = true
   elsif @standing && @cranky == true
    @shots = 0
    @runs = 0
   else
    'NO!'
   end
  end

  def sick?
    @sick
  end
end