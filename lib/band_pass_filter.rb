
def band_pass_filter(track, lower, upper)
  updated_track = []
  track.each do |freq|
    if freq < lower 
      updated_track << lower
    elsif freq > upper 
      updated_track << upper
    else
      updated_track << freq
    end
  end
   updated_track
end