require "test/unit"
require "./Game"

class BowlingTest < Test::Unit::TestCase
    def setup
        @game = Game.new
    end
    
    def test_gutter_game
        20.times do
            @game.roll(0)
        end
        assert_equal(0, @game.score())
    end
end

