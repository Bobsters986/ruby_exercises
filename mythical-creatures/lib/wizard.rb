class Wizard
    attr_accessor :name, :bearded, :rested, :spell_counter

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @spell_counter = 0
    end

    def bearded?
        @bearded
    end

    def incantation(saying)
        'sudo ' + saying
    end

    def rested?
        return false if spell_counter >= 3
        rested
    end

    def cast
        @spell_counter += 1
        "MAGIC MISSILE!"
    end
end