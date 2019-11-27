require 'player'

describe Player do
let(:test_player) { Player.new("Eve") }

  it "has a name" do
    expect(test_player.name).to eq "Eve"
  end

  context "hit points" do
    it "has an initial value of 100" do
      expect(test_player.hit_points).to eq 100
    end

    it "has hit points" do
      expect { test_player.take_damage }.to change { test_player.hit_points }.by(-10)
    end
  end

end
