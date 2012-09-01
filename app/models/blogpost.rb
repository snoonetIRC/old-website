class Blogpost < ActiveRecord::Base
  attr_accessible :body, :excerpt, :timestamp, :title, :published

  before_create :default_timestamp

  scope :published, where(published: true)

  private

  def default_timestamp
    self.timestamp ||= Time.now
  end
end
