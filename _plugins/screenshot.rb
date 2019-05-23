# Makes a term tooltip

module Jekyll

  module Screenshot

    def screenshot(src)
      alt = src.gsub(/[^a-zA-Z0-9]/, ' ')
      return "<div class='screenshot'><img src='/docs/assets/images/screenshots/#{src}.png' alt='#{alt}'></div>"
    end

  end
end

Liquid::Template.register_filter(Jekyll::Screenshot)
