require 'securerandom'

class RandomBot
  ACTIONS=[:left, :up, :down, :right, :shoot]

  attr_reader :key

  def initialize(input_images)
    @images = input_images
    @key = SecureRandom.uuid
  end

  def choose_action(game_state)
    ACTIONS.sample
  end

  def image(tagged=false)
    return @images[:tagged] if tagged
    @images[:standard]
  end

end