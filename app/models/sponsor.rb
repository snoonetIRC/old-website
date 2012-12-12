class Sponsor < ActiveRecord::Base
  attr_accessible :name, :url, :image_url

  validates_presence_of :url, :image_url, :name
end
