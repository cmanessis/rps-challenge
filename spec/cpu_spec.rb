require 'cpu'

describe CPU do
  let(:cpu) {described_class.new}

  it "can choose Rock, Paper, Scissors" do
    option_array = []
    100.times { option_array << cpu.choice }
    expect(option_array.uniq).to contain_exactly('Rock', 'Paper', 'Scissors')
  end
end
