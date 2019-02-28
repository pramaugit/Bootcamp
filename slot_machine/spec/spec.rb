require_relative '../slot_machine'

describe SlotMachine do
  # TODO
  it 'check that 3 jokers equals 50' do
    actual = SlotMachine.new.score(["joker","joker","joker"])
    expected = 50
    expect(actual).to eq(expected)
  end

  it 'check that at least 2 jokers equals 25' do
    actual = SlotMachine.new.score(["joker","star","joker"])
    expected = 25
    expect(actual).to eq(expected)
  end

 it 'check that 2 star and a jokers equals 20' do
    actual = SlotMachine.new.score(["star","star","joker"])
    expected = 20
    expect(actual).to eq(expected)
  end

  it 'check where 3 different items gives zero' do
    actual = SlotMachine.new.score(["joker","star","cherry"])
    expected = 0
    expect(actual).to eq(expected)
  end
end

