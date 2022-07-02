local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  print("failed to load: colorizer")
  return
end

-- require('colorizer').setup(nil, {names=false, mode='background'})
colorizer.setup(
  nil,
 {
    RGB= true,
    RRGGBB   = true,
    names    = true,
    RRGGBBAA = true,
    rgb_fn   = true,
    hsl_fn   = true,
    css      = true,
    css_fn   = true,
    mode     = 'background',
  }
)
