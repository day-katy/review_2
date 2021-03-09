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

  it "changes too-high frequencies to match the highest filter and too-low frequences to match the lowest filter" do
    expect(band_pass_filter([30, 50,60, 1100], 40, 1000)).to eq [40, 50, 60, 1000]
  end

  it "gives default filters of 40 and 1000 when no filters are provided" do
    expect(band_pass_filter([30, 50,60, 1100])).to eq [40, 50, 60, 1000]
  end

  it "raises an error if any of the input is nil" do
    expect(band_pass_filter([40, 50,60, nil])).to eq "The input is corrupted"
  end

end


end