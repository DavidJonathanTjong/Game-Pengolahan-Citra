# class Battle::Scene

  # def pbSelectBattler(idxBattler, selectMode = 1)
  #   numWindows = @battle.sideSizes.max * 2
  #   numWindows.times do |i|
  #     sel = (idxBattler.is_a?(Array)) ? !idxBattler[i].nil? : i == idxBattler
  #     selVal = (sel) ? selectMode : 0
  #     @sprites["dataBox_#{i}"].selected = selVal if @sprites["dataBox_#{i}"]
  #     @sprites["pokemon_#{i}"].selected = selVal if @sprites["pokemon_#{i}"]
  #     apply_random_sprite_operation(@sprites["pokemon_#{i}"])
  #     # Hanya terapkan efek pada Pokémon musuh
  #     if sel && @battle.opposes?(i)  # Periksa apakah ini adalah Pokémon musuh
  #       apply_random_sprite_operation(@sprites["pokemon_#{i}"])
  #     end
  #   end
  # end

  # def apply_random_sprite_operation(sprite)
  #   operations = [:flip_horizontal, :flip_vertical, :grayscale, :thresholding, 
  #                 :sharpness, :blur, :brightness_adjust]
  #   operation = operations.sample # Pilih operasi secara acak
  
  #   case operation
  #   when :flip_horizontal
  #     sprite.zoom_x = -1  # Flip horizontal
  #     sprite.x += sprite.bitmap.width  # Pindahkan ke kanan setelah flip
  #   when :flip_vertical
  #     sprite.zoom_y = -1  # Flip vertical
  #     sprite.y += sprite.bitmap.height  # Pindahkan ke bawah setelah flip
  #   when :grayscale
  #     apply_grayscale(sprite)
  #   when :thresholding
  #     apply_thresholding(sprite)
  #   when :sharpness
  #     apply_sharpness(sprite)
  #   when :blur
  #     apply_blur(sprite)
  #   when :brightness_adjust
  #     apply_brightness_adjust(sprite)
  #   end
  # end
  
  # def apply_grayscale(sprite)
  #   bitmap = sprite.bitmap.clone
  #   bitmap = bitmap.to_color(255, 255, 255) # Membuat semua warna menjadi putih
  #   sprite.setBitmap(bitmap)
  # end
  
  # def apply_thresholding(sprite)
  #   bitmap = sprite.bitmap.clone
  #   for x in 0...bitmap.width
  #     for y in 0...bitmap.height
  #       pixel_color = bitmap.getPixel(x, y)
  #       average_color = (pixel_color.red + pixel_color.green + pixel_color.blue) / 3
  #       if average_color < 128
  #         bitmap.setPixel(x, y, Color.new(0, 0, 0)) # Hitam
  #       else
  #         bitmap.setPixel(x, y, Color.new(255, 255, 255)) # Putih
  #       end
  #     end
  #   end
  #   sprite.setBitmap(bitmap)
  # end
  
  # def apply_sharpness(sprite)
  #   # Ini adalah representasi sederhana untuk meningkatkan kontras
  #   bitmap = sprite.bitmap.clone
  #   for x in 1...(bitmap.width - 1)
  #     for y in 1...(bitmap.height - 1)
  #       original_color = bitmap.getPixel(x, y)
  #       # Hitung warna yang lebih tajam
  #       new_red = [[original_color.red * 1.5, 255].min, 0].max
  #       new_green = [[original_color.green * 1.5, 255].min, 0].max
  #       new_blue = [[original_color.blue * 1.5, 255].min, 0].max
  #       bitmap.setPixel(x, y, Color.new(new_red, new_green, new_blue))
  #     end
  #   end
  #   sprite.setBitmap(bitmap)
  # end
  
  # def apply_blur(sprite)
  #   bitmap = sprite.bitmap.clone
  #   blurred_bitmap = Bitmap.new(bitmap.width, bitmap.height)
    
  #   for x in 1...(bitmap.width - 1)
  #     for y in 1...(bitmap.height - 1)
  #       total_red = 0
  #       total_green = 0
  #       total_blue = 0
        
  #       # Ambil warna dari 3x3 area
  #       for dx in -1..1
  #         for dy in -1..1
  #           pixel_color = bitmap.getPixel(x + dx, y + dy)
  #           total_red += pixel_color.red
  #           total_green += pixel_color.green
  #           total_blue += pixel_color.blue
  #         end
  #       end
        
  #       average_red = total_red / 9
  #       average_green = total_green / 9
  #       average_blue = total_blue / 9
        
  #       blurred_bitmap.setPixel(x, y, Color.new(average_red, average_green, average_blue))
  #     end
  #   end
    
  #   sprite.setBitmap(blurred_bitmap)
  # end
  
  # def apply_brightness_adjust(sprite)
  #   bitmap = sprite.bitmap.clone
  #   for x in 0...bitmap.width
  #     for y in 0...bitmap.height
  #       pixel_color = bitmap.getPixel(x, y)
  #       new_red = [[pixel_color.red + 50, 255].min, 0].max
  #       new_green = [[pixel_color.green + 50, 255].min, 0].max
  #       new_blue = [[pixel_color.blue + 50, 255].min, 0].max
  #       bitmap.setPixel(x, y, Color.new(new_red, new_green, new_blue))
  #     end
  #   end
  #   sprite.setBitmap(bitmap)
  # end
  

# end
