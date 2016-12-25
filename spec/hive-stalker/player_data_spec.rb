module HiveStalker
  RSpec.describe PlayerData do
    describe '#initialize' do
      it 'sets the various attributes' do
        data = PlayerData.new({ :player_id=>455990, 
                                :steam_id=>48221310, 
                                :alias=>"|LZ| Morrolan", 
                                :score=>4371, 
                                :level=>12, 
                                :experience=>95938, 
                                :badges_enabled=>false, 
                                :badges=>[], 
                                :skill=>693, 
                                :time_total=>33790, 
                                :time_marine=>24110, 
                                :time_alien=>9680, 
                                :time_commander=>239, 
                                :reinforced_tier=>nil, 
                                :adagrad_sum=>0.0093})

        expect(data.player_id).to eq 455990
        expect(data.steam_id).to eq 48221310
        expect(data.alias).to eq '|LZ| Morrolan'
        expect(data.score).to eq 4371
        expect(data.level).to eq 12
        expect(data.experience).to eq 95938
        expect(data.badges).to eq []
        expect(data.skill).to eq 693
        expect(data.time_total).to eq 33790
        expect(data.time_marine).to eq 24110
        expect(data.time_alien).to eq 9680
        expect(data.time_commander).to eq 239
        expect(data.reinforced_tier).to be_nil
        expect(data.adagrad_sum).to be_within(0.01).of(0.0093)
      end
    end
  end
end