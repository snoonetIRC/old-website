module ApplicationHelper
  class CustomHtml < Redcarpet::Render::SmartyHTML
    def block_code(code, language)
      sha = Digest::SHA1.hexdigest(code)
      Rails.cache.fetch ["code", language, sha].join('-') do
        Pygments.highlight(code, lexer: language, options: {linenos: 'table'}) + ">"
      end
    end
  end

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


    render = CustomHtml.new(render_options)
    markdown = Redcarpet::Markdown.new(render, options)

    output = text.gsub(/(^`{3}.*?^`{3})/m, "{% raw %}\n\\1\n{% endraw %}")
    output = Liquid::Template.parse(output).render
    output = markdown.render(output)
    output.html_safe
  end

  def smarten text
    smarty = Redcarpet::Render::SmartyPants
    smarty.render(text).html_safe
  end

  def pretty_time timestamp
    # time_tag timestamp, (time_ago_in_words(timestamp) + (timestamp.future? ? ' in the future': ' ago')), title: timestamp.strftime('%A, %B %-d, %Y – %-l:%M %p %Z'), class: ['icon-time']
    return time_tag timestamp, time_ago_in_words(timestamp) + (timestamp.future? ? ' in the future': ' ago'), title: timestamp.strftime('%A, %B %-d, %Y - %-l:%M %p %Z'), class: ['icon-time']
  end

end
