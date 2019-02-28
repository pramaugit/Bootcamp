
require 'pry-byebug'
# Item  Three of the same Two of the same + Joker
# Joker 🤩 50  25 (2 jokers + anything)
# Star ⭐️ 40  20
# Bell 🛎  30  15
# Seven 7️⃣ 20  10
# Cherry 🍒  10  5
# ONE REEL = ["joker", ....]

VALUE = {"joker" => [50, 25], "star" => [40, 20], "bell" => [30, 15], "seven" => [20, 10], "cherry" => [10, 5]
}

class SlotMachine
  REEL = ["joker", "star", "bell", "seven", "cherry"]
  def initialize
    @reel1 = REEL.sample
    @reel2 = REEL.sample
    @reel3 = REEL.sample
  end

  def pull_lever!
    @reel1 = REEL.sample
    @reel2 = REEL.sample
    @reel3 = REEL.sample
  end

  def score(reels = [@reel1, @reel2, @reel3])
    if reels.uniq.count == 3
      return 0
    elsif reels.uniq.count == 1
      return VALUE[reels[0]][0]
    elsif reels.include?("joker")
      VALUE[reels.sort[1]][1]
    else
      return 0
    end
  end
end
