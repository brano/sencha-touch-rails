module SenchaTouch
  module SassExtensions
    module Functions
      module ThemeImages
        def theme_image(theme, path, mime_type = nil)
          path = path.value
          images_path = File.join(File.expand_path('../../',__FILE__), "vendor/assets", "images", theme.value)
          real_path = File.join(images_path, path)
          inline_image_string(data(real_path), compute_mime_type(path, mime_type))
        end
      end
    end
  end
end

module Sass
  module Script
    module Functions
     include SenchaTouch::SassExtensions::Functions::ThemeImages
    end
  end
end
