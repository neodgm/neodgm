use PixelFont.OTFLayout

lookups NeoDGM.Lookups.GPOS.Common, for: "GPOS" do
  lookup :single_adjustment, "Move 1px forward" do
    adjust_uniform '!-:;|~', x_placement: 1
  end
end
