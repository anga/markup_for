module MarkupFor
  class Markup
    def render(content, markup)
      send markup.to_sym, content
    end

    Dir.glob(File.dirname(__FILE__) + '/markups/*.rb').each do |markup|
    eval "
     def #{File.basename markup, '.rb'}(content)
       #{File.read markup}
     end
    "
    end
  end
end
