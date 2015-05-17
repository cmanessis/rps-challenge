class Outcome
  def initialize
    @beats = { 'Rock' => %w(Paper), 'Paper' => %w(Scissors), 'Scissors' => %w(Rock) }
  end

  def make(p1, p2)
    return 'tie' if p1 == p2
    return 'win' if @beats[p2].include?(p1)
    "lose"
  end
end
