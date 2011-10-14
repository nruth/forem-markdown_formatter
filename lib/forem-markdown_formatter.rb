require "forem-markdown_formatter/version"
require 'redcarpet'

module Forem
  module FormattingHelper
    def as_formatted_html(text)
      return text if text.blank?
      formatter = ::Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      formatter.render(text).html_safe
    end
  end
end
