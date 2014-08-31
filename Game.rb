class Game
    def initialize()
        @current_score = 0
    end
    
    def roll(pins)
        @current_score += pins
    end
    def score()
        @current_score
    end
end