#color-palette.rb
class ColorPalette
  def get_color_codes_in_hex(color_palette)

  end
  def get_color_codes_in_rgb(color_palette)

  end
	def get_colors_arrays(size)
    color_palette = []
    hue = 359
    step_size = 360/size
    for i in 0..size-1
      s = Random.new.rand(60..90)
      l = Random.new.rand(40..90)
      color_code = "#{hue},#{s}%,#{l}%"
      color_palette.push(color_code) unless color_palette.include?(color_code)
      hue = hue - step_size
    end
    return color_palette
  end
end

cp = ColorPalette.new
colors = cp.get_colors_arrays(4)
puts colors