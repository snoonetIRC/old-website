class Update < ActiveRecord::Base
  attr_accessible :body, :excerpt, :timestamp, :title, :published

  before_create :default_timestamp

  default_scope { order(timestamp: :desc) }
  scope :published, -> {
    where(published: true)
  }

  # Returns a summary of the current post object.
  # If the excerpt exists, returns that, otherwise, truncates at the `<!--more-->` tag
  def summary
    if excerpt.present?
      excerpt
    else
      body.split('<!--more-->')[0]
    end
  end

  def published?
    published
  end
   # Links to the newer post
  #
  def newer
    Update.unscoped.where('timestamp > ? AND published = ?', self.timestamp, true).order('timestamp ASC').limit(1)[0]
  end

  # Links to the older post
  #
  def older
    Update.unscoped.where('timestamp < ? AND published = ?', self.timestamp, true).order('timestamp DESC').limit(1)[0]
  end

  def to_param
    "#{id}-#{title}".parameterize
  end

  private

  def default_timestamp
    self.timestamp ||= Time.now
  end

end
