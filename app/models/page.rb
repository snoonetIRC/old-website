class Page < ActiveRecord::Base

  before_save :parameterize_permalink
  before_save :update_content_if_needed

  # Needed to make `redirect_to @page` and other helpers work correctly
  def to_param
    permalink
  end

  protected

  def parameterize_permalink
    self.permalink = name if permalink.blank?

    self.permalink = permalink.parameterize
  end

  def update_content_if_needed
    checksum = Digest::MD5.hexdigest(content_markdown)

    if content_checksum != checksum # content_markdown has changed.
      self.content_checksum = checksum
      self.content_html = MARKDOWN_RENDERER.render(content_markdown)
    end
  end

end
