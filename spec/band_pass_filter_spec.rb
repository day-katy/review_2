require 'band_pass_filter'

describe "#band_pass_filter" do

describe "when given a track array" do

  it "does not change when within the filters" do 
    expect(band_pass_filter([40, 50, 60, 1000], 40, 1000)).to eq [40, 50, 60, 1000]
  end

  it "changes too-low frequencies to match the lowest filter" do
    expect(band_pass_filter([30, 50,60, 1000], 40, 1000)).to eq [40, 50, 60, 1000]
  end

   it "changes too-high frequencies to match the highest filter" do
    expect(band_pass_filter([40, 50,60, 1100], 40, 1000)).to eq [40, 50, 60, 1000]
  end
end


end