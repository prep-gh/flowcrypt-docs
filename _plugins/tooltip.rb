# Makes a term tooltip

module Jekyll

  module Tooltip

    def tooltip(input, tooltip=nil)
      if input.is_a? String
        return fmt_tooltip(input, tooltip)
      else
        return fmt_tooltip(input["name"], input['def'])
      end
    end

    def id(input)
      return fmt_id(input)
    end

    private

    def fmt_id(input)
      return '#' + input.gsub(/[^a-zA-Z]/, "_").upcase
    end

    def fmt_tooltip(input, tooltip)
      return "<a class='tip' href='#{fmt_id(input)}'>#{input}</a><span class='tip'>[#{input}]<br>#{tooltip}</span>"
    end

  end
end

Liquid::Template.register_filter(Jekyll::Tooltip)
