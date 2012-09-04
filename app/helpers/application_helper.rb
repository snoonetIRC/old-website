module ApplicationHelper
  def pretty_time timestamp
    return time_tag timestamp, time_ago_in_words(timestamp) + (timestamp.future? ? ' in the future': ' ago'), title: timestamp.strftime('%A, %B %-d, %Y - %-l:%M %p %Z'), class: ['icon-time']
  end

  # Markdown

  def format text
    render_options = {
      no_styles: true,
      with_toc_data: true,
    }
    options = {
      no_intra_emphasis: true,
      tables: true,
      autolink: true,
      strikethrough: true,
      lax_html_blocks: true,
      space_after_headers: true,
      superscript: true,
      fenced_code_blocks: true
    }


    render = Redcarpet::Render::HTML.new(render_options)
    markdown = Redcarpet::Markdown.new(render, options)
    smarty = Redcarpet::Render::SmartyPants
    smarty.render(markdown.render(Liquid::Template.parse(text).render)).html_safe
  end

  def smarten text
    smarty = Redcarpet::Render::SmartyPants
    smarty.render(text).html_safe
  end
end
