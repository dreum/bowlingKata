require "test/unit"
require "./Game"

class BowlingTest < Test::Unit::TestCase
    def setup
        @game = Game.new
    end
    
    def test_gutter_game
        roll_many(0, 20)
        assert_equal(0, @game.score())
    end
    
    def test_all_ones
        roll_many(1, 20)
        assert_equal(20, @game.score())
    end
    
    def test_roll_spare
        roll_spare()
        @game.roll(3)
        roll_many(0, 17)
        assert_equal(16, @game.score())
    end
    
    def test_perfect_game
        roll_many(10, 12)
        assert_equal(300, @game.score())
    end
    
    def test_roll_strike
        @game.roll(10)
        @game.roll(5)
        @game.roll(3)
        roll_many(0, 17)
        assert_equal(26, @game.score())
    end
    
    def roll_spare()
        @game.roll(5)
        @game.roll(5)
    end
    
    def roll_many(pins, rolls)
        rolls.times { @game.roll(pins) }
    end
end

