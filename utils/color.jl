using Color, Lazy

hue_range(n) = [0:360/n:360.][1:n]

# hexes = @>> [hex(HSV(h, 1, 0.5)) for h in hue_range(20)]

# Night colours
hexes = @>> [hex(HSV(h, 0.2, 1)) for h in hue_range(20)]

styles = map(enumerate(hexes)) do t
  i, h = t
  """
  .cm-s-june-night span.cm-variable.cm-hash-$(i-1),
  .cm-s-june-night span.cm-variable-2.cm-hash-$(i-1),
  .cm-s-june-night span.cm-def.cm-hash-$(i-1) {color: #$h;}
  """
end

# styles = map(enumerate(hexes)) do t
#   i, h = t
#   """
#   .cm-s-june span.cm-variable.cm-hash-$(i-1), .cm-s-june span.cm-variable-2.cm-hash-$(i-1) {color: #$h;}
#   """
# end

clipboard(join(styles))