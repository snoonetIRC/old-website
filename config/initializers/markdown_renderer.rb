markdown_options = {
  autolink: true,
  tables: true
}

MARKDOWN_RENDERER = Redcarpet::Markdown.new(Redcarpet::Render::HTML, markdown_options)
