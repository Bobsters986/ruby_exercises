class Pirate
    attr_accessor :name, :job, :evil, :booty

    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @evil = 0
        @booty = 0
    end

    def cursed?
        @evil > 2
    end

    def commit_heinous_act
        @evil += 1
    end

    def rob_ship
        @booty += 100
    end

end