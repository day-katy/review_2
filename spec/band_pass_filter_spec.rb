require 'band_pass_filter'

describe "#band_pass_filter" do

describe "when given a track array within the filters, output is not changed" do
  it "does not change" do 
    expect(band_pass_filter([40, 50, 60, 1000], 40, 1000)).to eq [40, 50, 60, 1000]
  end
end


end