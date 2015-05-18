require 'outcome'

describe Outcome do

  let(:outcome) { described_class.new }



  it 'knows p1 Rock beats p2 Scissors ' do
    expect(outcome.make 'Rock', 'Scissors').to eq('win')
  end

  it 'knows p1 Paper beats p2 Rock ' do
    expect(outcome.make 'Paper', 'Rock').to eq('win')
  end

  it 'knows p1 Scissors beats p2 Paper ' do
    expect(outcome.make 'Paper', 'Rock').to eq('win')
  end

  it 'knows p1 Rock loses to p2 Paper ' do
    expect(outcome.make 'Rock', 'Paper').to eq('lose')
  end

  it 'knows p1 Paper loses to p2 Scissors ' do
    expect(outcome.make 'Rock', 'Paper').to eq('lose')
  end

  it 'knows p1 Scissors loses to p2 Rock ' do
    expect(outcome.make 'Scissors', 'Rock').to eq('lose')
  end

  it 'knows p1 Rock ties with p2 Rock' do
    expect(outcome.make 'Rock', 'Rock').to eq('tie')
  end

  it 'knows p1 Paper ties with p2 Paper' do
    expect(outcome.make 'Paper', 'Paper').to eq('tie')
  end

  it 'knows p1 Scissors ties with p2 Scissors' do
    expect(outcome.make 'Paper', 'Paper').to eq('tie')
  end
end
