require 'outcome'

describe Outcome do

  let(:outcome) { described_class.new }



  it 'knows p1 Rock beats p2 Scissors ' do
    expect(outcome.make 'Rock', 'Scissors').to eq('win')
  end

  it 'knows P1 Paper beats P2 Rock ' do
    expect(outcome.make 'Paper', 'Rock').to eq('win')
  end

  it 'knows P1 Scissors beats P2 Paper ' do
    expect(outcome.make 'Paper', 'Rock').to eq('win')
  end

  it 'knows P1 Rock loses to P2 Paper ' do
    expect(outcome.make 'Rock', 'Paper').to eq('lose')
  end

  it 'knows P1 Paper loses to P2 Scissors ' do
    expect(outcome.make 'Rock', 'Paper').to eq('lose')
  end

  it 'knows P1 Scissors loses to P2 Rock ' do
    expect(outcome.make 'Scissors', 'Rock').to eq('lose')
  end

  it 'knows P1 Rock ties with P2 Rock' do
    expect(outcome.make 'Rock', 'Rock').to eq('tie')
  end

  it 'knows P1 Paper ties with P2 Paper' do
    expect(outcome.make 'Paper', 'Paper').to eq('tie')
  end

  it 'knows P1 Scissors ties with P2 Scissors' do
    expect(outcome.make 'Paper', 'Paper').to eq('tie')
  end
end
