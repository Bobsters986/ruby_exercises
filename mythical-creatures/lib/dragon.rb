class Dragon
    attr_accessor :name, :color, :rider, :hungry, :num_meals

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @num_meals = 0
    end

    def eat
        @num_meals += 1
        @hungry = false if num_meals > 2
    end

    def hungry?
        @hungry
    end
end
