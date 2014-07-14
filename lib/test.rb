require 'pry'
class Test
  def hue2rgb(p,q,t)
    t = t + 1 if t < 0
    t = t -1 if t > 1
    if 6 * t < 1
      return p+(q-p)*6*t
    end
    if 2 * t < 1
      return q
    end
    if 3 * t < 2
      return p + (q - p) * ((2.0/3 - t) * 6)
    end
    return p
  end
  def get_color_codes_in_rgb(h, s, l)
    if s == 0
      r = g = b = l * 255
    else
      if l < 0.5 
        y = l * (1.0 + s)
      else
        y = l + s - l * s
      end
      x = 2 * l - y
      r = (255 * hue2rgb(x, y, h + 1.0/3)).round(0)
      g = (255 * hue2rgb(x, y, h)).round(0)
      b = (255 * hue2rgb(x, y, h - 1.0/3)).round(0)
    end
    return "#{r},#{g},#{b}"
  end
end

test = Test.new
puts test.get_color_codes_in_rgb(0.9,0.6,0.4)