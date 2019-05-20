# Makes a term tooltip

module Jekyll

  module Screenshot

    def screenshot(src)
      return "<div class='screenshot'><img src='/docs/images/screenshots/#{src}.png'></div>"
    end

  end
end

Liquid::Template.register_filter(Jekyll::Screenshot)
