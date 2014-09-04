class Game
    def initialize()
        @rolls = []
    end
    
    def roll(pins)
        @rolls << pins
    end
    
    def spare?(current_roll)
        frame_score(current_roll) == 10
    end
    
    def frame_score(current_roll)
        @rolls[current_roll] + @rolls[current_roll + 1]
    end
    
    def score()
        current_score = 0
        current_frame = 0
        current_roll = 0
        while current_frame < 10
            if (spare?(current_roll))
                current_score += frame_score(current_roll) + @rolls[current_roll + 2]
            else
                current_score += frame_score(current_roll)
            end
            current_roll += 2
            current_frame += 1
        end
        current_score
    end
end