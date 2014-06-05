class Game
    
    def initialize()
        @rolls = []
    end
    
    def roll(pins)
        @rolls += [pins]
    end
    
    def is_strike(roll_index)
        @rolls[roll_index] == 10
    end
    
    def is_spare(roll_index)
        @rolls[roll_index] + @rolls[roll_index+1] == 10
    end
    
    def score()
        roll_index = 0
        frame = 0
        total_score = 0
        while frame < 10
            if (is_strike(roll_index))
                total_score += 10 + @rolls[roll_index+1] + @rolls[roll_index+2]
                roll_index += 1
                frame += 1
            elsif (is_spare(roll_index))
                total_score += 10 + @rolls[roll_index+2]
                roll_index += 2
                frame += 1 
            elsif
                total_score += @rolls[roll_index] + @rolls[roll_index+1]
                roll_index += 2
                frame += 1
            end
            
        end
        total_score
    end
end