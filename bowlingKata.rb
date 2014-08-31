require "test/unit"
require "./Game"

class BowlingTest < Test::Unit::TestCase
    def setup
        @game = Game.new
    end
    
    def roll_many(pins)
        20.times do
            @game.roll(pins)
        end
    end
    
    def test_gutter_game
        roll_many(0)
        assert_equal(0, @game.score())
    end
    
    def test_all_ones
        roll_many(1)
        assert_equal(20, @game.score())
    end
end

