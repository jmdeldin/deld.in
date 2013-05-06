require 'liquid'
require 'rdiscount'

## Provides a filter for running your variables through Markdown's
## Smartypants.
##
##   {{ var | smart }}
##
module LiquidSmart
  def smart(text)
    RDiscount.new(text, :smart).to_html
  end
end

Liquid::Template.register_filter LiquidSmart
